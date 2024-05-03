import { Module } from '@nestjs/common';
import { DatabaseModule } from './global/database/database.module';
import { AuthModule } from './features/auth/auth.module';
import { argonOptions } from './config/argon.config';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { JwtModule } from '@nestjs/jwt';
import { APP_GUARD, APP_PIPE, RouterModule } from '@nestjs/core';
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
import { CacheModule } from '@nestjs/cache-manager';
import { redisStore } from 'cache-manager-redis-yet';
import { RedisModule } from '@nestjs-modules/ioredis';
import { DoctorSlotsModule } from './features/doctor-slots/doctor-slots.module';
import { ServiceProvidersModule } from './features/users/service-providers/service-providers.module';
import { routerRouts } from './core/router';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true, load: [argonOptions] }),
    JwtModule.register({ global: true }),
    CacheModule.registerAsync({
      isGlobal: true,
      useFactory: async (config: ConfigService) => ({
        store: await redisStore({
          socket: {
            port: config.get('REDIS_PORT'),
            host: config.get('REDIS_HOST'),
          },
          ttl: 172800000, // 2 Days
          database: 0,
        }),
      }),
      inject: [ConfigService],
    }),
    RedisModule.forRootAsync({
      useFactory: async (config: ConfigService) => ({
        type: 'single',
        options: {
          db: 1,
          port: config.get('REDIS_PORT'),
          host: config.get('REDIS_HOST'),
        },
      }),
      inject: [ConfigService],
    }),
    RouterModule.register(routerRouts),
    DatabaseModule,
    AccessControlModule.forRoles(roles),
    AuthModule,
    AdminModule,
    AppointmentModule,
    DoctorSlotsModule,
    ServiceProvidersModule,
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
