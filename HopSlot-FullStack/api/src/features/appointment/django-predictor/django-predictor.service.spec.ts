import { Test, TestingModule } from '@nestjs/testing';
import { DjangoPredictorService } from './django-predictor.service';

describe('DjangoPredictorService', () => {
  let service: DjangoPredictorService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [DjangoPredictorService],
    }).compile();

    service = module.get<DjangoPredictorService>(DjangoPredictorService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
