import {
  BadRequestException,
  ForbiddenException,
  Injectable,
  NotFoundException,
  UnauthorizedException,
} from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { JwtService } from '@nestjs/jwt';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import * as argon from 'argon2';
import { Tokens } from './types/tokens.type';
import { SignUpDto } from './dtos/sign-up.dto';
import {
  Observable,
  catchError,
  from,
  map,
  of,
  switchMap,
  tap,
  throwError,
} from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { UserEssentials } from 'src/core/types/model_essentials.types';
import { Role } from 'db/postgres';
import { PrismaClientKnownRequestError } from '@prisma/client/runtime/library';
import { CheckForUsernameEmailDto } from './dtos/check-for-username-email.dto';
import { LoginDto } from './dtos/login.dto';
import { DoctorService } from '../users/service-providers/doctor/doctor.service';

@Injectable()
export class AuthService {
  constructor(
    private jwt: JwtService,
    private prismaPG: PostgresPrismaService,
    private config: ConfigService,
    private docService: DoctorService,
  ) {}
  
  signUpLocal(
    signUpDto: SignUpDto,
  ): Observable<APIResponse<{ user: UserEssentials; tokens: Tokens }>> {
    if (!signUpDto.password) {
      throw new BadRequestException('Password is required');
    }

    return from(this.hashData(signUpDto.password)).pipe(
      switchMap((passwordHash) => {
        return from(
          this.prismaPG.user.create({
            data: {
              email: signUpDto.email,
              username: signUpDto.username,
              role: signUpDto.role,
              firstName: signUpDto.firstName,
              lastName: signUpDto.lastName,
              password: passwordHash,
            },
          }),
        ).pipe(
          switchMap((user) => {
            if (user.role === Role.DOCTOR) {
              return this.docService
                .create(
                  {
                    cabinAlt: signUpDto.cabinAlt!,
                    cabinFloor: signUpDto.cabinFloor!,
                    cabinLat: signUpDto.cabinLat!,
                    cabinLng: signUpDto.cabinLng!,
                    cabinNumber: signUpDto.cabinNumber!,
                    hospitalId: signUpDto.hospitalId!,
                    userId: user.id,
                  },
                  user.id,
                )
                .pipe(switchMap(() => of(user)));
            } else if (user.role === Role.PATIENT) {
              return from(
                this.prismaPG.patient.create({
                  data: {
                    user: {
                      connect: {
                        id: user.id,
                      },
                    },
                    age: signUpDto.age!,
                  },
                }),
              ).pipe(switchMap(() => of(user)));
            } else {
              return of(user);
            }
          }),
          switchMap((user) => {
            return from(
              this.getTokens(user.id, user.email, user.username, user.role),
            ).pipe(switchMap((tokens) => of({ user, tokens })));
          }),
          tap((info) => {
            return from(this.updateRtHash(info.user.id, info.tokens.rt, 'rt'));
          }),
          switchMap((info) => {
            return of({
              data: {
                user: {
                  id: info.user.id,
                  email: info.user.email,
                  username: info.user.username,
                  role: info.user.role,
                },
                tokens: info.tokens,
              },
              message: 'User created successfully',
            });
          }),
          catchError((err) => {
            if (err?.name === PrismaClientKnownRequestError.name) {
              return throwError(
                () => new PrismaClientKnownRequestError(err.message, err),
              );
            }
            return throwError(() => err);
          }),
        );
      }),
    );
  }

  checkForUsernameEmail(
    dto: CheckForUsernameEmailDto,
  ): Observable<APIResponse<boolean>> {
    return from(
      this.prismaPG.user.findFirst({
        where: {
          OR: [
            {
              username: dto.username,
            },
            {
              email: dto.email,
            },
          ],
        },
      }),
    ).pipe(
      map((user) => {
        if (!user) {
          return {
            data: false,
            message: 'Username or email are available',
          };
        } else {
          return {
            data: true,
            message: 'Username or email already taken',
          };
        }
      }),
    );
  }

  login(
    dto: LoginDto,
  ): Observable<APIResponse<{ user: UserEssentials; tokens: Tokens }>> {
    return from(
      this.prismaPG.user.findFirst({
        where: {
          OR: [
            {
              username: dto.username,
            },
            {
              email: dto.email,
            },
          ],
        },
      }),
    ).pipe(
      switchMap((user) => {
        if (!user) {
          return throwError(() => new NotFoundException('Invalid credentials'));
        }
        return from(this.verifyHash(user.password ?? '', dto.password)).pipe(
          switchMap((valid) => {
            if (!valid) {
              return throwError(
                () => new UnauthorizedException('Invalid credentials'),
              );
            }
            return from(
              this.getTokens(user.id, user.email, user.username, user.role),
            ).pipe(
              tap((tokens) => {
                return this.updateRtHash(user.id, tokens.rt, 'rt');
              }),
              map((tokens) => {
                return {
                  data: {
                    user: {
                      id: user.id,
                      email: user.email,
                      username: user.username,
                      role: user.role,
                      firstName: user.firstName,
                      lastName: user.lastName,
                    },
                    tokens,
                  },
                  message: 'Logged in successfully',
                };
              }),
            );
          }),
        );
      }),
    );
  }

  logout(id: string) {
    return from(
      this.prismaPG.user.update({
        where: { id },
        data: {
          refreshTokenHash: null,
        },
      }),
    ).pipe(
      map(() => {
        return {
          message: 'Logged out successfully.',
        };
      }),
    );
  }

  refreshToken(id: string, refreshToken: string) {
    return from(
      this.prismaPG.user.findUnique({
        where: {
          id,
        },
      }),
    ).pipe(
      switchMap((user) => {
        if (!user) {
          throw new NotFoundException('No such user exists.');
        }

        if (!user.refreshTokenHash) {
          throw new ForbiddenException('User has no refresh token.');
        }

        return from(
          this.verifyHash(user.refreshTokenHash, refreshToken, 'rt'),
        ).pipe(
          switchMap((valid) => {
            if (!valid) {
              throw new UnauthorizedException('Invalid refresh token.');
            }
            return from(
              this.getTokens(user.id, user.email, user.username, user.role),
            ).pipe(
              tap((tokens) => {
                return this.updateRtHash(user.id, tokens.rt, 'rt');
              }),
              map((tokens) => {
                return {
                  data: {
                    user: {
                      id: user.id,
                      email: user.email,
                      username: user.username,
                      role: user.role,
                    },
                    tokens,
                  },
                  message: 'Refreshed token successfully',
                };
              }),
            );
          }),
        );
      }),
    );
  }

  private async updateRtHash(
    userId: string,
    refreshToken: string,
    type: 'at' | 'rt' | 'common',
  ) {
    const hash = await this.hashData(refreshToken, type);
    const user = await this.prismaPG.user.update({
      where: { id: userId },
      data: { refreshTokenHash: hash.toString() },
    });
    return user;
  }

  private async hashData(
    data: string,
    type: 'at' | 'rt' | 'common' = 'common',
  ) {
    const opts = this.config.get('argon');
    // console.log((opts as any).at);
    const hash = await argon.hash(data, {
      ...(type === 'at' ? opts?.at : type === 'rt' ? opts?.rt : opts?.common),
    });
    return hash.toString();
  }

  private verifyHash(
    hash: string,
    data: string,
    type: 'at' | 'rt' | 'common' = 'common',
  ) {
    const opts = this.config.get('argon');
    return argon.verify(hash, data, {
      ...(type === 'at' ? opts?.at : type === 'rt' ? opts?.rt : opts?.common),
    });
  }

  private async getTokens(
    userId: string,
    email: string,
    username: string,
    role: Role,
  ): Promise<Tokens> {
    const [at, rt] = await Promise.all([
      this.jwt.signAsync(
        { id: userId, email, username, role },
        {
          secret: this.config.get('JWT_AT_SECRET'),
          expiresIn: this.config.get<number>('JWT_AT_EXPIRES_IN'),
        },
      ),
      this.jwt.signAsync(
        { id: userId, email, username },
        {
          secret: this.config.get('JWT_RT_SECRET'),
          expiresIn: this.config.get<number>('JWT_RT_EXPIRES_IN'),
        },
      ),
    ]);
    return {
      at,
      rt,
    };
  }
}
