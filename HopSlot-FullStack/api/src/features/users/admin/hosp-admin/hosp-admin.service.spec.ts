import { Test, TestingModule } from '@nestjs/testing';
import { HospAdminService } from './hosp-admin.service';

describe('HospAdminService', () => {
  let service: HospAdminService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [HospAdminService],
    }).compile();

    service = module.get<HospAdminService>(HospAdminService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
