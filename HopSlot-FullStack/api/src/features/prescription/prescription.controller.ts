import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Query,
  BadRequestException,
  UseInterceptors,
  UploadedFile,
} from '@nestjs/common';
import { PrescriptionService } from './prescription.service';
import { CreatePrescriptionDto } from './dto/create-prescription.dto';
import { UpdatePrescriptionDto } from './dto/update-prescription.dto';
import { UseRoles } from 'nest-access-control';
import { GetCurrentUser } from 'src/core/decorators/get-current-user.decorator';
import { File, FileInterceptor } from '@nest-lab/fastify-multer';

@Controller('prescription')
export class PrescriptionController {
  constructor(private readonly prescriptionService: PrescriptionService) {}

  @Post()
  @UseRoles({
    action: 'create',
    resource: 'prescription',
    possession: 'any',
  })
  @UseInterceptors(FileInterceptor('report'))
  create(
    @Body() createPrescriptionDto: CreatePrescriptionDto,
    @UploadedFile() file: File,
  ) {
    return this.prescriptionService.create(createPrescriptionDto, file);
  }

  @Get()
  @UseRoles({
    action: 'read',
    resource: 'prescription',
    possession: 'own',
  })
  find(
    @Query('type') type: string,
    @GetCurrentUser('id') userId: string,
    @Query('appointmentId') appointmentId: string,
  ) {
    if (!type) {
      throw new BadRequestException('Type is required.');
    }

    if (type === 'my') {
      return this.prescriptionService.findAllMyPrescriptions(userId);
    } else if (type === 'appointment') {
      if (!appointmentId) {
        throw new BadRequestException(
          'Appointment ID is required for finding prescriptions by appointment',
        );
      }
      return this.prescriptionService.findPrescriptionsByAppointmentId(
        appointmentId,
      );
    } else {
      throw new BadRequestException('Invalid type.');
    }
  }

  @Get('all')
  @UseRoles({
    action: 'read',
    resource: 'prescription',
    possession: 'any',
  })
  findAll() {
    return this.prescriptionService.findAll();
  }

  @Get(':id')
  @UseRoles({
    action: 'read',
    resource: 'prescription',
    possession: 'own',
  })
  findOne(@Param('id') id: string) {
    return this.prescriptionService.findOne(id);
  }

  @Patch(':id')
  @UseRoles({
    action: 'update',
    resource: 'prescription',
    possession: 'own',
  })
  update(
    @Param('id') id: string,
    @Body() updatePrescriptionDto: UpdatePrescriptionDto,
  ) {
    return this.prescriptionService.update(id, updatePrescriptionDto);
  }

  @Delete(':id')
  @UseRoles({
    action: 'delete',
    resource: 'prescription',
    possession: 'own',
  })
  remove(@Param('id') id: string) {
    return this.prescriptionService.remove(id);
  }
}
