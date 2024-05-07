import { Test, TestingModule } from '@nestjs/testing';
import { ReSchedulerController } from './re-scheduler.controller';

describe('ReSchedulerController', () => {
  let controller: ReSchedulerController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ReSchedulerController],
    }).compile();

    controller = module.get<ReSchedulerController>(ReSchedulerController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
