import { Injectable } from '@nestjs/common';
import { CommonAdminService } from '../common-admin/common-admin.service';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { ConfigService } from '@nestjs/config';
import { CreateAdminDto } from '../dto/create-admin.dto';

@Injectable()
export class SuperAdminService extends CommonAdminService {
  constructor(prismaPG: PostgresPrismaService, config: ConfigService) {
    super(prismaPG, config);
  }

  create(createAdminDto: CreateAdminDto) {
    return super.create(createAdminDto, true);
  }

  findAll() {
    return super.findAll(true);
  }
}
