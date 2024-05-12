import { RouteTree } from '@nestjs/core';
import { AppointmentModule } from 'src/features/appointment/appointment.module';
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
  {
    path: '/appointment',
    module: AppointmentModule,
    children: [
      {
        path: '/',
        module: AppointmentModule,
      },
    ],
  },
];
