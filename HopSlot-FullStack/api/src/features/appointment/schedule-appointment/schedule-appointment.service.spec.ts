import { Test, TestingModule } from '@nestjs/testing';
import { ScheduleAppointmentService } from './schedule-appointment.service';

describe('ScheduleAppointmentService', () => {
  let service: ScheduleAppointmentService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [ScheduleAppointmentService],
    }).compile();

    service = module.get<ScheduleAppointmentService>(ScheduleAppointmentService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
