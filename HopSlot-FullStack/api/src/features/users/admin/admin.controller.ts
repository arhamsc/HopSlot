import { Controller, Get, Body, Patch, Param, Delete } from '@nestjs/common';
import { UpdateAdminDto } from './dto/update-admin.dto';
import { ForAdmin } from 'src/core/decorators/for-admin.decorator';
import { SuperAdminService } from './super-admin/super-admin.service';
import { HospAdminService } from './hosp-admin/hosp-admin.service';

@ForAdmin()
@Controller('admin')
export class AdminController {
  constructor(
    private readonly superAdminService: SuperAdminService,
    private readonly hospAdminService: HospAdminService,
  ) {}

  // @Public()
  // @Post()
  // create(@Body() createAdminDto: CreateAdminDto) {
  //   return this.adminService.create(createAdminDto);
  // }

  // @Get()
  // findAll() {
  //   return this.adminService.findAll();
  // }

  // @Get(':id')
  // findOne(@Param('id') id: string) {
  //   return this.adminService.findOne(id);
  // }

  // @Patch(':id')
  // update(@Param('id') id: string, @Body() updateAdminDto: UpdateAdminDto) {
  //   return this.adminService.update(id, updateAdminDto);
  // }

  // @Delete(':id')
  // remove(@Param('id') id: string) {
  //   return this.adminService.remove(id);
  // }
}
