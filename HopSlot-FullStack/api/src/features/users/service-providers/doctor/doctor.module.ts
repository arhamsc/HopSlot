import { Module } from '@nestjs/common';
import { DoctorService } from './doctor.service';
import { DoctorController } from './doctor.controller';
import { DocInfoService } from './doc-info/doc-info.service';

@Module({
  controllers: [DoctorController],
  providers: [DoctorService, DocInfoService],
  exports: [DoctorService],
})
export class DoctorModule {}
