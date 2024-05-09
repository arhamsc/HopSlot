import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  BadGatewayException,
  Query,
  BadRequestException,
  ParseEnumPipe,
} from '@nestjs/common';
import { AppointmentService } from './appointment.service';
import { CreateAppointmentDto } from './dto/create-appointment.dto';
import { UpdateAppointmentDto } from './dto/update-appointment.dto';
import { UseRoles } from 'nest-access-control';
import { GetCurrentUser } from 'src/core/decorators/get-current-user.decorator';
import { AllowAC } from 'src/core/decorators/allow-ac/allow-ac.decorator';
import { Role } from 'db/postgres';

@Controller('appointment')
export class AppointmentController {
  constructor(private readonly appointmentService: AppointmentService) {}

  @AllowAC()
  @Get('/sample')
  sample() {
    return this.appointmentService.sample();
  }

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
    if (role === Role.ADMIN) {
      return this.appointmentService.findAll();
    } else {
      return this.appointmentService.findMyAppointments({
        userId,
        forEntity: role,
        type,
      });
    }
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.appointmentService.findOne(+id);
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
}
