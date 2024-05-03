import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { HospitalService } from './hospital.service';
import { CreateHospitalDto } from './dto/create-hospital.dto';
import { UpdateHospitalDto } from './dto/update-hospital.dto';
import { UseRoles } from 'nest-access-control';
import { GetCurrentUser } from 'src/core/decorators/get-current-user.decorator';

@Controller('hospital')
export class HospitalController {
  constructor(private readonly hospitalService: HospitalService) {}

  @Post()
  @UseRoles({
    resource: 'hospital',
    action: 'create',
    possession: 'own',
  })
  create(
    @Body() createHospitalDto: CreateHospitalDto,
    @GetCurrentUser('id') id: string,
  ) {
    return this.hospitalService.create(createHospitalDto, id);
  }

  @Get('my')
  @UseRoles({
    resource: 'hospital',
    action: 'read',
    possession: 'own',
  })
  findMyHospitals(@GetCurrentUser('id') id: string) {
    return this.hospitalService.findMyHospitals(id);
  }

  @Get()
  @UseRoles({
    resource: 'hospital',
    action: 'read',
    possession: 'any',
  })
  findAll() {
    return this.hospitalService.findAll();
  }

  @Get(':id')
  @UseRoles({
    resource: 'hospital',
    action: 'read',
    possession: 'own',
  })
  findOne(@Param('id') id: string) {
    return this.hospitalService.findOne(id);
  }

  @Patch(':id')
  @UseRoles({
    resource: 'hospital',
    action: 'update',
    possession: 'own',
  })
  update(
    @Param('id') id: string,
    @Body() updateHospitalDto: UpdateHospitalDto,
  ) {
    return this.hospitalService.update(id, updateHospitalDto);
  }

  @Delete(':id')
  @UseRoles({
    resource: 'hospital',
    action: 'delete',
    possession: 'own',
  })
  remove(@Param('id') id: string) {
    return this.hospitalService.remove(id);
  }
}
