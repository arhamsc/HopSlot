import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { DoctorSlotsService } from './doctor-slots.service';
import { CreateDoctorSlotDto } from './dto/create-doctor-slot.dto';
import { UpdateDoctorSlotDto } from './dto/update-doctor-slot.dto';
import { UseRoles } from 'nest-access-control';

@Controller('doctor-slots')
export class DoctorSlotsController {
  constructor(private readonly doctorSlotsService: DoctorSlotsService) {}

  @UseRoles({
    action: 'create',
    possession: 'own',
    resource: 'doctorSlot',
  })
  @Post()
  create(@Body() createDoctorSlotDto: CreateDoctorSlotDto) {
    return this.doctorSlotsService.create(createDoctorSlotDto);
  }

  @Get()
  findAll() {
    return this.doctorSlotsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.doctorSlotsService.findOne(+id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateDoctorSlotDto: UpdateDoctorSlotDto,
  ) {
    return this.doctorSlotsService.update(+id, updateDoctorSlotDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.doctorSlotsService.remove(+id);
  }
}
