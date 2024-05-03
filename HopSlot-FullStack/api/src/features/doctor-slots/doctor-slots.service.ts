import { ConflictException, Injectable } from '@nestjs/common';
import { CreateDoctorSlotDto } from './dto/create-doctor-slot.dto';
import { UpdateDoctorSlotDto } from './dto/update-doctor-slot.dto';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { from, switchMap } from 'rxjs';

@Injectable()
export class DoctorSlotsService {
  constructor(private readonly pgPrisma: PostgresPrismaService) {}
  create(createDoctorSlotDto: CreateDoctorSlotDto) {
    return from(
      this.pgPrisma.doctorSlot.findFirst({
        where: {
          slotStart: {
            gte: createDoctorSlotDto.slotStart,
            lte: createDoctorSlotDto.slotEnd,
          },
        },
      }),
    ).pipe(
      switchMap((slot) => {
        if (slot) {
          throw new ConflictException('Slot already exists');
        }
        return from(
          this.pgPrisma.doctorSlot.create({
            data: createDoctorSlotDto,
          }),
        );
      }),
    );
  }

  findAll() {
    return `This action returns all doctorSlots`;
  }

  findOne(id: number) {
    return `This action returns a #${id} doctorSlot`;
  }

  update(id: number, updateDoctorSlotDto: UpdateDoctorSlotDto) {
    return `This action updates a #${id} doctorSlot`;
  }

  remove(id: number) {
    return `This action removes a #${id} doctorSlot`;
  }
}
