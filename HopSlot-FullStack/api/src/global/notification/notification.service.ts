import { Injectable } from '@nestjs/common';
import { FirebaseAdmin, InjectFirebaseAdmin } from 'nestjs-firebase';
import { NotificationDto } from './dto/notification.dto';
import { from } from 'rxjs';

@Injectable()
export class NotificationService {
  constructor(@InjectFirebaseAdmin() private readonly fbAdmin: FirebaseAdmin) {}

  sendNotification(token: string, notification: NotificationDto) {
    return from(
      this.fbAdmin.messaging.send({
        token,
        notification: {
          title: notification.title,
          body: notification.body,
        },
        data: notification.data,
        android: {
          priority: 'high',
        },
      }),
    );
  }

  sendMulticastNotification(tokens: string[], notification: NotificationDto) {
    return from(
      this.fbAdmin.messaging.sendEachForMulticast({
        tokens,
        notification: {
          title: notification.title,
          body: notification.body,
        },
        data: notification.data,
        android: {
          priority: 'high',
        },
      }),
    );
  }
}
