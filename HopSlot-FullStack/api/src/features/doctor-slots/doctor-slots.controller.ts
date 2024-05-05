import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Query,
} from '@nestjs/common';
import { DoctorSlotsService } from './doctor-slots.service';
import { CreateDoctorSlotDto } from './dto/create-doctor-slot.dto';
import { UpdateDoctorSlotDto } from './dto/update-doctor-slot.dto';
import { UseRoles } from 'nest-access-control';
import { GetCurrentUser } from 'src/core/decorators/get-current-user.decorator';

@Controller('doctor-slots')
export class DoctorSlotsController {
  constructor(private readonly doctorSlotsService: DoctorSlotsService) {}

  @UseRoles({
    action: 'create',
    possession: 'own',
    resource: 'doctorSlot',
  })
  @Post()
  create(
    @Body() createDoctorSlotDto: CreateDoctorSlotDto,
    @GetCurrentUser('id') userId: string,
  ) {
    return this.doctorSlotsService.create(createDoctorSlotDto, userId);
  }

  @UseRoles({
    action: 'read',
    possession: 'own',
    resource: 'doctorSlot',
  })
  @Get()
  findAll() {
    return this.doctorSlotsService.findAll();
  }

  @UseRoles({
    action: 'read',
    possession: 'own',
    resource: 'doctorSlot',
  })
  @Get(':id')
  findOne(@Param('id') id: string, @Query('by-doctor') byDoctor: boolean) {
    if (byDoctor) {
      return this.doctorSlotsService.findSlotsByDoctorId(id);
    }
    return this.doctorSlotsService.findOne(id);
  }

  @UseRoles({
    action: 'update',
    possession: 'own',
    resource: 'doctorSlot',
  })
  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateDoctorSlotDto: UpdateDoctorSlotDto,
  ) {
    return this.doctorSlotsService.update(id, updateDoctorSlotDto);
  }

  @UseRoles({
    action: 'delete',
    possession: 'own',
    resource: 'doctorSlot',
  })
  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.doctorSlotsService.remove(id);
  }
}
