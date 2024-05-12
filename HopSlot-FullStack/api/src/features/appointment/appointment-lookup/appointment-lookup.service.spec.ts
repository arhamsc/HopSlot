import { Test, TestingModule } from '@nestjs/testing';
import { AppointmentLookupService } from './appointment-lookup.service';

describe('AppointmentLookupService', () => {
  let service: AppointmentLookupService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [AppointmentLookupService],
    }).compile();

    service = module.get<AppointmentLookupService>(AppointmentLookupService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
