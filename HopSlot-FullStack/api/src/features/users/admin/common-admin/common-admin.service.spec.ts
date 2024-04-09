import { Test, TestingModule } from '@nestjs/testing';
import { CommonAdminService } from './common-admin.service';

describe('CommonAdminService', () => {
  let service: CommonAdminService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [CommonAdminService],
    }).compile();

    service = module.get<CommonAdminService>(CommonAdminService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
