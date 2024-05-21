import { Global, Module } from '@nestjs/common';
import { MongoPrismaService } from './mongo-prisma.service';
import { PostgresPrismaService } from './postgres-prisma.service';

@Global()
@Module({
  providers: [PostgresPrismaService, MongoPrismaService],
  exports: [PostgresPrismaService, MongoPrismaService],
})
export class DatabaseModule {}
