import { Module } from '@nestjs/common';
import { ReportsService } from './reports.service';
import { ReportsController } from './reports.controller';
import { CloudinaryModule } from 'src/dynamic-modules/cloudinary/cloudinary.module';

@Module({
  imports: [CloudinaryModule.register({ moduleFolder: 'reports' })],
  controllers: [ReportsController],
  providers: [ReportsService],
})
export class ReportsModule {}
