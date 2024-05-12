import {
  BadRequestException,
  Controller,
  Get,
  Param,
  Query,
} from '@nestjs/common';
import { AppointmentLookupService } from './appointment-lookup.service';
import { UseRoles } from 'nest-access-control';

@Controller('lookup')
export class AppointmentLookupController {
  constructor(private readonly lookupService: AppointmentLookupService) {}

  @Get('hospitals')
  @UseRoles({
    action: 'read',
    resource: 'hospital',
  })
  findHospitals() {
    return this.lookupService.findHospitals();
  }

  @Get('doctors/:hospitalId')
  @UseRoles({
    action: 'read',
    resource: 'doctor',
  })
  findDoctors(@Param('hospitalId') hospitalId: string) {
    return this.lookupService.findDoctors(hospitalId);
  }

  @Get('questions')
  @UseRoles({
    action: 'read',
    resource: 'symptomEvidence',
  })
  searchQuestions(@Query('q') query: string) {
    return this.lookupService.searchQuestions(query);
  }

  @Get('slots')
  @UseRoles({
    action: 'read',
    resource: 'doctorSlot',
    possession: 'any',
  })
  slotLookup(@Query('doctorId') doctorId: string, @Query('date') date: string) {
    if (!doctorId || !date)
      return new BadRequestException('doctorId and date are required');
    return this.lookupService.slotLookup(doctorId, new Date(date));
  }
}
