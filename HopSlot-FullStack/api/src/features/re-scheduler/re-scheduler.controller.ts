import { Controller, Get, Patch, Post } from '@nestjs/common';
import { UseRoles } from 'nest-access-control';
import { GetCurrentUser } from 'src/core/decorators/get-current-user.decorator';
import { ReSchedulerService } from './re-scheduler.service';

@Controller('re-scheduler')
export class ReSchedulerController {
  constructor(private readonly reSchedulerService: ReSchedulerService) {}

  @Post('i-am-late')
  @UseRoles({
    action: 'create',
    resource: 'reschedule',
    possession: 'own',
  })
  produceDelay(@GetCurrentUser('id') userId: string) {
    return this.reSchedulerService.rescheduleAppointments(userId);
  }
}
