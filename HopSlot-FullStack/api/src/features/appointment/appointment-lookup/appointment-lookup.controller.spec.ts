import { Test, TestingModule } from '@nestjs/testing';
import { AppointmentLookupController } from './appointment-lookup.controller';

describe('AppointmentLookupController', () => {
  let controller: AppointmentLookupController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [AppointmentLookupController],
    }).compile();

    controller = module.get<AppointmentLookupController>(AppointmentLookupController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
