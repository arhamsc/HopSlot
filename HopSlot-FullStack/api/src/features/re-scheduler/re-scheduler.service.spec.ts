import { Test, TestingModule } from '@nestjs/testing';
import { ReSchedulerService } from './re-scheduler.service';

describe('ReSchedulerService', () => {
  let service: ReSchedulerService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [ReSchedulerService],
    }).compile();

    service = module.get<ReSchedulerService>(ReSchedulerService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
