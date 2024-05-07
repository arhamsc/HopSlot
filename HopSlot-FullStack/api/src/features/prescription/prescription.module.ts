import { Module } from '@nestjs/common';
import { PrescriptionService } from './prescription.service';
import { PrescriptionController } from './prescription.controller';
import { CloudinaryModule } from 'src/dynamic-modules/cloudinary/cloudinary.module';

@Module({
  controllers: [PrescriptionController],
  providers: [PrescriptionService],
  imports: [CloudinaryModule.register({ moduleFolder: 'prescriptions' })],
})
export class PrescriptionModule {}
