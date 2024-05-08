import { Injectable, UnauthorizedException } from '@nestjs/common';
import { CreateAdminDto } from '../dto/create-admin.dto';
import { UpdateAdminDto } from '../dto/update-admin.dto';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { Observable, from, map } from 'rxjs';
import { UserEssentials } from 'src/core/types/model_essentials.types';
import { APIResponse } from 'src/core/types/api-response.type';
import { ConfigService } from '@nestjs/config';
import { Role } from 'db/postgres';

/* Common Method to Super Admin and Admin */

@Injectable()
export class CommonAdminService {
  constructor(
    protected prismaPG: PostgresPrismaService,
    protected config: ConfigService,
  ) {}

  create(
    createAdminDto: CreateAdminDto,
    superAdmin: boolean = false,
  ): Observable<APIResponse<UserEssentials>> {
    const adminSecret = this.config.get<string>('ADMIN_SECRET');

    if (superAdmin && createAdminDto.secretAdminKey !== adminSecret) {
      throw new UnauthorizedException(
        'You are not authorized to create an admin user.',
      );
    }

    return from(
      this.prismaPG.user.create({
        data: {
          ...createAdminDto,
          role: superAdmin ? Role.ADMIN : Role.HOSP_ADMIN,
        },
        select: {
          id: true,
          email: true,
          firstName: true,
          lastName: true,
          role: true,
          username: true,
          fcmToken: true,
        },
      }),
    ).pipe(
      map((user) => {
        return {
          data: user,
          message: superAdmin
            ? 'Super admin created successfully'
            : 'Admin user created successfully.',
        };
      }),
    );
  }

  findAll(
    superAdmin: boolean = false,
  ): Observable<APIResponse<UserEssentials[]>> {
    return from(
      this.prismaPG.user.findMany({
        where: { role: superAdmin ? Role.ADMIN : Role.HOSP_ADMIN },
        select: {
          id: true,
          email: true,
          firstName: true,
          lastName: true,
          role: true,
          username: true,
          fcmToken: true,
        },
      }),
    ).pipe(
      map((users) => ({
        data: users,
        message: superAdmin
          ? `Found ${users.length} super admins.`
          : `Found ${users.length} admin.`,
      })),
    );
  }

  /// For both Hospital Admin and Super Admin
  findOne(id: string): Observable<APIResponse<UserEssentials>> {
    return from(
      this.prismaPG.user.findUnique({
        where: {
          id,
        },
        select: {
          id: true,
          email: true,
          firstName: true,
          lastName: true,
          role: true,
          username: true,
          fcmToken: true,
        },
      }),
    ).pipe(
      map((user) => {
        if (!user) throw new UnauthorizedException('Admin not found.');
        return { data: user, message: `Found admin ${user?.username}.` };
      }),
    );
  }

  update(
    id: string,
    updateAdminDto: UpdateAdminDto,
  ): Observable<APIResponse<UserEssentials>> {
    return from(
      this.prismaPG.user.update({
        where: { id },
        data: updateAdminDto,
        select: {
          id: true,
          email: true,
          firstName: true,
          lastName: true,
          role: true,
          username: true,
          fcmToken: true,
        },
      }),
    ).pipe(
      map((user) => {
        return {
          data: user,
          message: `${user.role === Role.ADMIN ? 'Super' : ''} Admin ${user.username} updated successfully.`,
        };
      }),
    );
  }

  remove(id: string): Observable<APIResponse> {
    return from(
      this.prismaPG.user.delete({
        where: { id },
      }),
    ).pipe(
      map(() => {
        return {
          message: 'Admin deleted successfully.',
        };
      }),
    );
  }
}
