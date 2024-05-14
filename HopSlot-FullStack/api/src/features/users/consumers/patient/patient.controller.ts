import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { PatientService } from './patient.service';
import { CreatePatientDto } from './dto/create-patient.dto';
import { UpdatePatientDto } from './dto/update-patient.dto';
import { UseRoles } from 'nest-access-control';

@Controller('patient')
export class PatientController {
  constructor(private readonly patientService: PatientService) {}

  @Post()
  @UseRoles({
    action: 'create',
    resource: 'patient',
    possession: 'own',
  })
  create(@Body() createPatientDto: CreatePatientDto) {
    return this.patientService.create(createPatientDto);
  }

  @Get()
  @UseRoles({
    action: 'read',
    resource: 'patient',
    possession: 'any',
  })
  findAll() {
    return this.patientService.findAll();
  }

  @Get(':id')
  @UseRoles({
    action: 'read',
    resource: 'patient',
    possession: 'own',
  })
  findOne(@Param('id') id: string) {
    return this.patientService.findOne(id);
  }

  @Patch(':id')
  @UseRoles({
    action: 'update',
    resource: 'patient',
    possession: 'own',
  })
  update(@Param('id') id: string, @Body() updatePatientDto: UpdatePatientDto) {
    return this.patientService.update(id, updatePatientDto);
  }

  @Delete(':id')
  @UseRoles({
    action: 'delete',
    resource: 'patient',
    possession: 'own',
  })
  remove(@Param('id') id: string) {
    return this.patientService.remove(id);
  }
}
