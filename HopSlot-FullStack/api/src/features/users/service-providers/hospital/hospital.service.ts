import { Injectable, Logger, NotFoundException } from '@nestjs/common';
import { CreateHospitalDto } from './dto/create-hospital.dto';
import { UpdateHospitalDto } from './dto/update-hospital.dto';
import {
  Observable,
  catchError,
  from,
  map,
  of,
  switchMap,
  tap,
  throwError,
} from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { HospitalEssentials } from 'src/core/types/model_essentials.types';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { Role } from 'db/postgres';

@Injectable()
export class HospitalService {
  private readonly logger = new Logger(HospitalService.name);

  constructor(private readonly prismaPG: PostgresPrismaService) {}

  create(createHospitalDto: CreateHospitalDto): any {
    const { adminId, ...dto } = createHospitalDto;

    return from(
      this.prismaPG.user.findUniqueOrThrow({
        where: {
          id: adminId,
          role: Role.HOSP_ADMIN,
        },
      }),
    ).pipe(
      switchMap((admin) => {
        //Comment for reference
        // if (!admin) {
        //   // If the admin does not exist, create a new user and then the hospital
        //   return from(
        //     this.prismaPG.user.create({
        //       data: {

        //       },
        //     }),
        //   ).pipe(
        //     switchMap((newAdmin) => {
        //       return from(
        //         this.prismaPG.hospital.create({
        //           data: { ...dto, adminId: newAdmin.id },
        //         }),
        //       );
        //     }),
        //   );
        // } else {
        // If the admin exists, create the hospital
        return from(
          this.prismaPG.hospital.create({
            data: { ...dto, adminId: admin.id },
          }),
        );
        // }
      }),
      catchError((error) => {
        if (error.code === 'P2025') {
          this.logger.log({ error });
          return throwError(() => new NotFoundException('Admin not found'));
        }
        return throwError(() => error);
      }),
    );
  }

  findAll() {
    return `This action returns all hospital`;
  }

  findOne(id: number) {
    return `This action returns a #${id} hospital`;
  }

  update(id: number, updateHospitalDto: UpdateHospitalDto) {
    return `This action updates a #${id} hospital`;
  }

  remove(id: number) {
    return `This action removes a #${id} hospital`;
  }
}
