import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { DoctorService } from './doctor.service';
import { CreateDoctorDto } from './dto/create-doctor.dto';
import { UpdateDoctorDto } from './dto/update-doctor.dto';
import { GetCurrentUser } from 'src/core/decorators/get-current-user.decorator';
import { Role } from 'db/postgres';
import { UseRoles } from 'nest-access-control';

@Controller('doctor')
export class DoctorController {
  constructor(private readonly doctorService: DoctorService) {}

  @Post()
  @UseRoles({
    resource: 'doctor',
    action: 'create',
    possession: 'own',
  })
  create(
    @Body() createDoctorDto: CreateDoctorDto,
    @GetCurrentUser('id') userId: string,
    @GetCurrentUser('role') role: Role,
  ) {
    const id =
      role === Role.HOSP_ADMIN || role === Role.ADMIN
        ? createDoctorDto.userId
        : userId;
    return this.doctorService.create(createDoctorDto, id);
  }

  @UseRoles({
    resource: 'doctor',
    action: 'read',
    possession: 'any',
  })
  @Get()
  findAll() {
    return this.doctorService.findAll();
  }

  @UseRoles({
    resource: 'doctor',
    action: 'read',
    possession: 'own',
  })
  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.doctorService.findOne(id);
  }

  @UseRoles({
    resource: 'doctor',
    action: 'update',
    possession: 'own',
  })
  @Patch(':id')
  update(@Param('id') id: string, @Body() updateDoctorDto: UpdateDoctorDto) {
    return this.doctorService.update(id, updateDoctorDto);
  }

  @UseRoles({
    resource: 'doctor',
    action: 'delete',
    possession: 'own',
  })
  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.doctorService.remove(id);
  }
}
