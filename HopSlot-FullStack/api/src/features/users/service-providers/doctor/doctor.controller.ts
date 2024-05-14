import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { DoctorService } from './doctor.service';
import { CreateDoctorDto } from './dto/create-doctor.dto';
import { UpdateDoctorDto } from './dto/update-doctor.dto';
import { GetCurrentUser } from 'src/core/decorators/get-current-user.decorator';
import { Role } from 'db/postgres';
import { UseRoles } from 'nest-access-control';
import { DocInfoService } from './doc-info/doc-info.service';
import { UpdateRoomLocationDto } from './dto/update-room-location.dto';

@Controller('doctor')
export class DoctorController {
  constructor(
    private readonly doctorService: DoctorService,
    private readonly doctorInfoService: DocInfoService,
  ) {}

  @Post()
  @UseRoles({
    resource: 'doctor',
    action: 'create',
    possession: 'own',
  })
  create(
    @Body() createDoctorDto: CreateDoctorDto,
    @GetCurrentUser('id') userId: string,
    @GetCurrentUser('role') role: Role,
  ) {
    const id =
      role === Role.HOSP_ADMIN || role === Role.ADMIN
        ? createDoctorDto.userId
        : userId;
    return this.doctorService.create(createDoctorDto, id);
  }

  @UseRoles({
    resource: 'doctor',
    action: 'read',
    possession: 'any',
  })
  @Get()
  findAll() {
    return this.doctorService.findAll();
  }

  @UseRoles({
    resource: 'doctor',
    action: 'read',
    possession: 'own',
  })
  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.doctorService.findOne(id);
  }

  @UseRoles({
    resource: 'doctor',
    action: 'update',
    possession: 'own',
  })
  @Patch(':id')
  update(@Param('id') id: string, @Body() updateDoctorDto: UpdateDoctorDto) {
    return this.doctorService.update(id, updateDoctorDto);
  }

  @UseRoles({
    resource: 'doctor',
    action: 'delete',
    possession: 'own',
  })
  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.doctorService.remove(id);
  }

  @UseRoles({
    resource: 'doctorInfo',
    action: 'read',
    possession: 'own',
  })
  @Get('my-stats')
  getMyStats(@GetCurrentUser('id') doctorId: string) {
    return this.doctorInfoService.getMyStats(doctorId);
  }

  @UseRoles({
    resource: 'appointment',
    action: 'read',
    possession: 'own',
  })
  @Get('todays-appointments')
  getTodaysAppointments(@GetCurrentUser('id') doctorId: string) {
    return this.doctorInfoService.getTodaysAppointments(doctorId);
  }

  @UseRoles({
    resource: 'appointment',
    action: 'read',
    possession: 'own',
  })
  @Get('appointments-history')
  getAppointmentsHistory(@GetCurrentUser('id') doctorId: string) {
    return this.doctorInfoService.fetchAppointmentHistory(doctorId);
  }

  @UseRoles({
    resource: 'appointment',
    action: 'read',
    possession: 'own',
  })
  @Get('closest-appointment')
  getNextAppointment(@GetCurrentUser('id') doctorId: string) {
    return this.doctorService.getClosestSlot(doctorId);
  }

  @UseRoles({
    resource: 'doctor',
    action: 'read',
    possession: 'own',
  })
  @Patch('room-location')
  updateRoomLocation(
    @GetCurrentUser('id') userId: string,
    @Body() dto: UpdateRoomLocationDto,
  ) {
    return this.doctorService.updateRoomLocation(dto, userId);
  }
}
