import { RouteTree } from '@nestjs/core';
import { HospitalModule } from 'src/features/users/service-providers/hospital/hospital.module';
import { ServiceProvidersModule } from 'src/features/users/service-providers/service-providers.module';

export const routerRouts: RouteTree[] = [
  {
    path: '/service-providers',
    module: ServiceProvidersModule,
    children: [
      {
        path: '/',
        module: HospitalModule,
      },
    ],
  },
];
