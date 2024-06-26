import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Query,
  ParseEnumPipe,
} from '@nestjs/common';
import { AppointmentService } from './appointment.service';
import { CreateAppointmentDto } from './dto/create-appointment.dto';
import { UpdateAppointmentDto } from './dto/update-appointment.dto';
import { UseRoles } from 'nest-access-control';
import { GetCurrentUser } from 'src/core/decorators/get-current-user.decorator';
import { Role } from 'db/postgres';

@Controller('')
export class AppointmentController {
  constructor(private readonly appointmentService: AppointmentService) {}

  @UseRoles({
    action: 'create',
    resource: 'appointment',
    possession: 'own',
  })
  @Post()
  create(
    @Body() createAppointmentDto: CreateAppointmentDto,
    @GetCurrentUser('id') userId: string,
  ) {
    return this.appointmentService.create(createAppointmentDto, userId);
  }

  @Get()
  @UseRoles({
    action: 'read',
    resource: 'appointment',
    possession: 'own',
  })
  findAll(
    @GetCurrentUser('id') userId: string,
    @GetCurrentUser('role') role: Role,
    @Query('type', new ParseEnumPipe(['upcoming', 'past'], { optional: true }))
    type?: 'upcoming' | 'past',
  ) {
    return this.appointmentService.findMyAppointments({
      userId,
      forEntity: role,
      type,
    });
  }

  @UseRoles({
    action: 'read',
    resource: 'appointment',
    possession: 'own',
  })
  @Get('/all')
  findAllAppointments(
    @GetCurrentUser('id') userId: string,
    @GetCurrentUser('role') role: Role,
  ) {
    return this.appointmentService.findAll(userId, role);
  }

  @Get(':id')
  @UseRoles({
    action: 'read',
    resource: 'appointment',
    possession: 'own',
  })
  findOne(@Param('id') id: string) {
    return this.appointmentService.findOne(id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateAppointmentDto: UpdateAppointmentDto,
  ) {
    return this.appointmentService.update(+id, updateAppointmentDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.appointmentService.remove(+id);
  }

  @Patch(':id/cancel')
  @UseRoles({
    action: 'update',
    resource: 'appointment',
    possession: 'own',
  })
  cancel(@Param('id') id: string, @GetCurrentUser('id') userId: string) {
    return this.appointmentService.cancelAppointment(id, userId);
  }
}
