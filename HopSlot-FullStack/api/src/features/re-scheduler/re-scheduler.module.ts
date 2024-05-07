import { Module } from '@nestjs/common';
import { ReSchedulerService } from './re-scheduler.service';
import { ReSchedulerController } from './re-scheduler.controller';

@Module({
  providers: [ReSchedulerService],
  controllers: [ReSchedulerController]
})
export class ReSchedulerModule {}
