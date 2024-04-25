import { Module } from '@nestjs/common';
import { DatabaseModule } from './global/database/database.module';
import { AuthModule } from './features/auth/auth.module';
import { argonOptions } from './config/argon.config';
import { ConfigModule } from '@nestjs/config';
import { JwtModule } from '@nestjs/jwt';
import { APP_GUARD, APP_PIPE } from '@nestjs/core';
import { HospitalModule } from './features/users/service-providers/hospital/hospital.module';
import { DoctorModule } from './features/users/service-providers/doctor/doctor.module';
import { AdminModule } from './features/users/admin/admin.module';
import { PostgresPrismaService } from './global/database/postgres-prisma.service';
import { MongoPrismaService } from './global/database/mongo-prisma.service';
import { RTJwtStrategy } from './features/auth/strategies/rt.strategy';
import { ATJwtStrategy } from './features/auth/strategies/at.strategy';
import { AtGuard } from './core/guards/at/at.guard';
import MyZodValidation from './core/pipes/zod-validation.pipe';
import { AccessControlModule } from 'nest-access-control';
import { roles } from './features/auth/roles.rbac';
import { AcRolesGuard } from './core/guards/ac-roles/ac-roles.guard';
import { AppointmentModule } from './features/appointment/appointment.module';

@Module({
  imports: [
    DatabaseModule,
    AuthModule,
    ConfigModule.forRoot({ isGlobal: true, load: [argonOptions] }),
    JwtModule.register({ global: true }),
    HospitalModule,
    DoctorModule,
    AdminModule,
    AccessControlModule.forRoles(roles),
    AppointmentModule,
  ],
  providers: [
    PostgresPrismaService,
    MongoPrismaService,
    RTJwtStrategy,
    ATJwtStrategy,
    {
      provide: APP_GUARD,
      useClass: AtGuard,
    },
    {
      provide: APP_GUARD,
      useClass: AcRolesGuard,
    },
    {
      provide: APP_PIPE,
      useValue: new MyZodValidation(),
    },
  ],
})
export class AppModule {}
