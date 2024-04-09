import {
  CanActivate,
  ExecutionContext,
  ForbiddenException,
  Injectable,
} from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { Reflector } from '@nestjs/core';
import { Role } from 'db/postgres';
import { Observable } from 'rxjs';
import { Roles } from 'src/core/decorators/roles.decorator';

@Injectable()
export class RoleGuard implements CanActivate {
  constructor(
    private reflector: Reflector,
    private config: ConfigService,
  ) {}

  canActivate(
    context: ExecutionContext,
  ): boolean | Promise<boolean> | Observable<boolean> {
    const roles = this.reflector.getAllAndOverride<Role[]>(Roles, [
      context.getHandler(),
      context.getClass(),
    ]);

    // console.log({ roles });

    if (!roles) return true;

    const request = context.switchToHttp().getRequest();

    const user = request.user;

    if (!user) {
      throw new ForbiddenException('Please login to continue');
    }

    if (user.role === Role.ADMIN) {
      return (
        request.body.secretAdminKey === this.config.get<string>('ADMIN_SECRET')
      );
    }

    return roles.every((role) => user.role === role);
  }
}
