import { Module } from '@nestjs/common';
import { DatabaseModule } from './global/database/database.module';
import { AuthModule } from './features/auth/auth.module';
import { argonOptions } from './config/argon.config';
import { ConfigModule } from '@nestjs/config';
import { JwtModule } from '@nestjs/jwt';
import { APP_GUARD } from '@nestjs/core';
import { RtGuard } from './core/guards/rt/rt.guard';

@Module({
  imports: [
    DatabaseModule,
    AuthModule,
    ConfigModule.forRoot({ isGlobal: true, load: [argonOptions] }),
    JwtModule.register({}),
  ],
  providers: [
    {
      provide: APP_GUARD,
      useClass: RtGuard,
    },
  ],
})
export class AppModule {}
