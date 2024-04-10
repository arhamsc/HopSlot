import { BadRequestException } from '@nestjs/common';
import { createZodValidationPipe } from 'nestjs-zod';
import { ZodError } from 'nestjs-zod/z';

const MyZodValidation = createZodValidationPipe({
  createValidationException: (error: Error) => {
    // console.log({ error });
    if (error instanceof ZodError) {
      if (!error.isEmpty && error.errors.length === 1) {
        if (
          error.errors[0]?.path?.length === 0 &&
          error.errors.every((e) => e.code !== 'custom')
        )
          return new BadRequestException('No data provided.');
      }
      return new BadRequestException(error.errors);
    }
    return new BadRequestException((error as ZodError).errors);
  },
});

// @Injectable()
// class MyZodValidation implements PipeTransform {
//   constructor(
//     private schemaOrDto?: ZodSchema | ZodDto,
//     private forbidNonWhiteList?: boolean,
//   ) {}

//   public transform(value: unknown, metadata: ArgumentMetadata) {
//     if (this.schemaOrDto) {
//       return validate(value, this.schemaOrDto, this.createValidationException);
//     }

//     const { metatype } = metadata;

//     if (!isZodDto(metatype)) {
//       return value;
//     }

//     return validate(value, metatype.schema, this.createValidationException);
//   }

//   private createValidationException(error: Error) {
//     // console.log({ error });
//     if (error instanceof ZodError) {
//       if (!error.isEmpty && error.errors.length === 1) {
//         if (error.errors[0]?.path?.length === 0)
//           return new BadRequestException('No data provided.');
//       }
//       return new BadRequestException(error.errors);
//     }
//     return new BadRequestException((error as ZodError).errors);
//   }
// }

export default MyZodValidation;
