import {
  Injectable,
  OnApplicationShutdown,
  OnModuleDestroy,
  OnModuleInit,
} from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { Kafka, Producer, ProducerRecord } from 'kafkajs';

@Injectable()
export class ProducerService implements OnModuleInit, OnModuleDestroy {
  private readonly kafka: Kafka = new Kafka({
    brokers: [this.config.get('KAFKA_BROKER_1') ?? 'localhost:9092'],
  });

  private readonly producer: Producer = this.kafka.producer();

  constructor(private readonly config: ConfigService) {}

  async onModuleInit() {
    await this.producer.connect();
  }

  async produce(record: ProducerRecord) {
    await this.producer.send(record);
  }

  async onModuleDestroy() {
    await this.producer.disconnect();
  }
}
