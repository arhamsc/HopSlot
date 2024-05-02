import { Injectable } from '@nestjs/common';
import { CreateAppointmentDto } from './dto/create-appointment.dto';
import { UpdateAppointmentDto } from './dto/update-appointment.dto';
import { SchedulerService } from './scheduler/scheduler.service';

@Injectable()
export class AppointmentService {
  constructor(private scheduler: SchedulerService) {}
  create(createAppointmentDto: CreateAppointmentDto) {
    return 'This action adds a new appointment';
  }

  async findAll() {
    const res = await this.scheduler.getAppointmentRequests('2', '3', '4');
    return `This action returns all appointment ${res}`;
  }

  findOne(id: number) {
    return `This action returns a #${id} appointment`;
  }

  update(id: number, updateAppointmentDto: UpdateAppointmentDto) {
    return `This action updates a #${id} appointment`;
  }

  remove(id: number) {
    return `This action removes a #${id} appointment`;
  }
}
