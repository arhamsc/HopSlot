import { ExtractJwt, Strategy } from 'passport-jwt';
import { JwtPayload, JwtRTPayload } from '../types/jwt_payload.types';
import { PassportStrategy } from '@nestjs/passport';
import { ConfigService } from '@nestjs/config';
import { FastifyRequest } from 'fastify';

export class RTJwtStrategy extends PassportStrategy(Strategy, 'rt-jwt') {
  constructor(private readonly configService: ConfigService) {
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      passReqToCallback: true,
      secretOrKey: configService.get('JWT_RT_SECRET'),
    });
  }

  async validate(
    req: FastifyRequest['raw'],
    payload: JwtPayload,
  ): Promise<JwtRTPayload> {
    const refreshToken =
      req.headers?.authorization?.replace('Bearer', '').trim() ?? '';
    return { ...payload, refreshToken };
  }
}
