import { ExecutionContext, Injectable } from '@nestjs/common';
import { Reflector } from '@nestjs/core';
import { ACGuard, InjectRolesBuilder, RolesBuilder } from 'nest-access-control';

@Injectable()
export class AcRolesGuard extends ACGuard {
  constructor(
    private readonly myReflector: Reflector,
    @InjectRolesBuilder() private readonly myRoleBuilder: RolesBuilder,
  ) {
    super(myReflector, myRoleBuilder);
  }

  canActivate(context: ExecutionContext): Promise<boolean> {
    const allow = this.myReflector.getAllAndOverride<boolean>('allow', [
      context.getHandler(),
      context.getClass(),
    ]);

    const request = context.switchToHttp().getRequest();

    if (allow) return Promise.resolve(true);
    return super.canActivate(context);
  }
}
