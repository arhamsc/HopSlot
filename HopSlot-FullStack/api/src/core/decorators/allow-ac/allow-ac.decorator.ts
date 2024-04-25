import { SetMetadata } from '@nestjs/common';

export const AllowAC = () => SetMetadata('allow', true);
