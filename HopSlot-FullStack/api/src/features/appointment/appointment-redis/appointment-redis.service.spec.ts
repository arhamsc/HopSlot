import { Test, TestingModule } from '@nestjs/testing';
import { AppointmentRedisService } from './appointment-redis.service';

describe('AppointmentRedisService', () => {
  let service: AppointmentRedisService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [AppointmentRedisService],
    }).compile();

    service = module.get<AppointmentRedisService>(AppointmentRedisService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
