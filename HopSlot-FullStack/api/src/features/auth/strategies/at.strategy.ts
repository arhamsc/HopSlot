import { ConfigService } from '@nestjs/config';
import { PassportStrategy } from '@nestjs/passport';
import { ExtractJwt, Strategy } from 'passport-jwt';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { JwtPayload } from '../types/jwt_payload.types';
import { Observable, from, map } from 'rxjs';
import { UserEssentials } from 'src/core/types/model_essentials.types';
import { Injectable } from '@nestjs/common';
import { Role } from 'db/postgres';

@Injectable()
export class ATJwtStrategy extends PassportStrategy(Strategy, 'at-jwt') {
  constructor(
    private config: ConfigService,
    private prismaPG: PostgresPrismaService,
  ) {
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      secretOrKey: config.get('JWT_AT_SECRET'),
    });
  }

  async validate(payload: JwtPayload): Promise<UserEssentials | null> {
    const user = await this.prismaPG.user.findUnique({
      where: { id: payload.id },
      select: {
        id: true,
        email: true,
        username: true,
        role: true,
      },
    });

    console.log({ user });

    if (!user) {
      return null;
    }

    return { ...user, roles: [Role[user?.role as keyof typeof Role]] };
  }
}
