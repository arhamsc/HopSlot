import { ExecutionContext, createParamDecorator } from '@nestjs/common';

export const GetCurrentUser = createParamDecorator(
  async (data: string | undefined, context: ExecutionContext) => {
    const request = context.switchToHttp().getRequest();
    if (!data) return request.user;
    return request.user[data];
  },
);
