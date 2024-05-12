import { HttpService } from '@nestjs/axios';
import { Injectable, Logger } from '@nestjs/common';
import { Observable, catchError, from, map } from 'rxjs';
import {
  AppointmentDjangoEssentials,
  PredictionResponse,
} from 'src/core/types/model_essentials.types';

@Injectable()
export class DjangoPredictorService {
  constructor(private readonly httpService: HttpService) {}
  logger = new Logger(DjangoPredictorService.name);
  async sample() {
    const res = await this.httpService.axiosRef.post('/api/predict');
    console.log({ res: res.data });
    return res.data;
  }

  getPredictions(
    data: AppointmentDjangoEssentials[],
  ): Observable<PredictionResponse[]> {
    return from(this.httpService.axiosRef.post('/api/predict', data)).pipe(
      map((res) => {
        return res.data;
      }),
      catchError((err) => {
        this.logger.error(err);
        return err;
      }),
    );
  }
}
