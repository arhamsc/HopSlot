import { createZodDto } from 'nestjs-zod';
import { DoctorModel } from 'src/core/schemas';

const updateLocationDto = DoctorModel.pick({
  cabinAlt: true,
  cabinLat: true,
  cabinLng: true,
});

export class UpdateRoomLocationDto extends createZodDto(updateLocationDto) {}
