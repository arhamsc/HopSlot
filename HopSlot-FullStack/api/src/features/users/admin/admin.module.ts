import { Module } from '@nestjs/common';
import { AdminController } from './admin.controller';
import { SuperAdminService } from './super-admin/super-admin.service';
import { HospAdminService } from './hosp-admin/hosp-admin.service';
import { CommonAdminService } from './common-admin/common-admin.service';

@Module({
  controllers: [AdminController],
  providers: [SuperAdminService, HospAdminService, CommonAdminService],
  exports: [SuperAdminService, HospAdminService],
})
export class AdminModule {}
