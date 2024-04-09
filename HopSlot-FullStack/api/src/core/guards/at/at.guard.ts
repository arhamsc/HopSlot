// Access Token Guard
// This guard is used to check the access token in the request header.

import {
  CanActivate,
  ExecutionContext,
  Injectable,
  Logger,
  UnauthorizedException,
} from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { Reflector } from '@nestjs/core';
import { JwtService, TokenExpiredError } from '@nestjs/jwt';
import { AuthGuard } from '@nestjs/passport';
import { FastifyRequest } from 'fastify';
import { Observable, catchError, from, map, of } from 'rxjs';
import { JwtPayload } from 'src/features/auth/types/jwt_payload.types';

@Injectable()
export class AtGuard extends AuthGuard('at-jwt') implements CanActivate {
  constructor(
    private reflector: Reflector,
    private jwtService: JwtService,
    private config: ConfigService,
  ) {
    super();
  }

  private readonly logger = new Logger(AtGuard.name);

  canActivate(
    context: ExecutionContext,
  ): boolean | Promise<boolean> | Observable<boolean> {
    const isPublic = this.reflector.getAllAndOverride('isPublic', [
      context.getHandler(),
      context.getClass(),
    ]);

    if (isPublic) return true;

    const req = context.switchToHttp().getRequest<FastifyRequest['raw']>();

    const at = req.headers.authorization?.replace('Bearer', '').trim() ?? '';

    const aTObv: any = from(
      this.jwtService.verifyAsync(at, {
        secret: this.config.get('JWT_AT_SECRET'),
      }),
    ).pipe(
      map((ele: JwtPayload) => {
        if (ele.username) {
          return super.canActivate(context);
        }
        return of(false);
      }),
      catchError((e) => {
        if (e instanceof TokenExpiredError) {
          throw new UnauthorizedException('Token expired');
        }
        return of(false);
      }),
    );

    return aTObv;
  }
}
