import { Inject, Injectable } from '@nestjs/common';
import { v2 as cloudinary } from 'cloudinary';
import { CloudinaryResponse } from './cloudinary-response';
import * as streamifier from 'streamifier';
import { File } from '@nest-lab/fastify-multer';

@Injectable()
export class CloudinaryService {
  constructor(
    @Inject('CLOUDINARY_OPTIONS') private options: Record<string, any>,
  ) {}
  uploadFile(file: File, subfolder: string): Promise<CloudinaryResponse> {
    return new Promise<CloudinaryResponse>((resolve, reject) => {
      const uploadStream = cloudinary.uploader.upload_stream(
        { folder: `HOPSLOT/${this.options.moduleFolder}/${subfolder}` },
        (error, result) => {
          // result.
          if (error) return reject(error);
          resolve(result!);
        },
      );
      if (file.buffer === undefined) {
        throw new Error('File buffer is undefined');
      }
      streamifier.createReadStream(file.buffer).pipe(uploadStream);
    });
  }

  async uploadFiles(files: File[], subfolder: string) {
    const fileResponses = await Promise.all(
      files.map(async (file): Promise<CloudinaryResponse> => {
        const res = await this.uploadFile(file, subfolder);
        return res;
      }),
    );
    return fileResponses;
  }

  async deleteFile(idOrPath: string): Promise<{ message: string }> {
    return await cloudinary.uploader.destroy(idOrPath, { invalidate: true });
  }

  async deleteFiles(paths: string[]) {
    return await cloudinary.api.delete_resources(paths, { invalidate: true });
  }

  async deleteEntireFolder(prefix: string) {
    return await cloudinary.api.delete_resources_by_prefix(prefix);
  }
}
