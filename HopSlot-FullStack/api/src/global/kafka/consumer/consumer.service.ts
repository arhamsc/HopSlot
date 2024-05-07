import { Injectable, OnApplicationShutdown, OnModuleDestroy } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import {
  Consumer,
  ConsumerRunConfig,
  ConsumerSubscribeTopics,
  Kafka,
} from 'kafkajs';

@Injectable()
export class ConsumerService implements OnModuleDestroy {
  private readonly kafka: Kafka = new Kafka({
    brokers: [this.config.get('KAFKA_BROKER_1') ?? 'localhost:9092'],
  });

  private readonly consumers: Consumer[] = [];

  constructor(private readonly config: ConfigService) {}

  async consume(topic: ConsumerSubscribeTopics, config: ConsumerRunConfig) {
    const consumer = this.kafka.consumer({
      groupId: 'hopslot-api',
    });

    await consumer.connect();
    await consumer.subscribe(topic);
    await consumer.run(config);
    this.consumers.push(consumer);
  }

  async onModuleDestroy() {
    for (const consumer of this.consumers) {
      await consumer.disconnect();
    }
  }
}
