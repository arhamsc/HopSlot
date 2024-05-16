import { Body, Controller, Post } from '@nestjs/common';
import { NotificationService } from './notification.service';
import { Public } from 'src/core/decorators/public.decorator';
import { AllowAC } from 'src/core/decorators/allow-ac/allow-ac.decorator';
import { NotificationDto } from './dto/notification.dto';

@Public()
@AllowAC()
@Controller('test-notification')
export class NotificationController {
  constructor(private notiService: NotificationService) {}

  @Post('/single')
  sendSingle(
    @Body('token') token: string,
    @Body('notification') notification: NotificationDto,
  ) {
    return this.notiService.sendNotification(token, notification);
  }

  @Post('/multi')
  sendMulti(
    @Body('tokens') tokens: string[],
    @Body('notification') notification: NotificationDto,
  ) {
    return this.notiService.sendMulticastNotification(tokens, notification);
  }
}
