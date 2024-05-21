import {
  ArgumentsHost,
  Catch,
  HttpException,
  HttpStatus,
  Logger,
} from '@nestjs/common';
import { BaseExceptionFilter } from '@nestjs/core';
import { Prisma as PGPrisma } from '@prisma-postgres/client';

type ErrorCodesStatusMapping = {
  [key: string]: number;
};

@Catch()
export class PrismaClientExceptionFilter extends BaseExceptionFilter {
  logger = new Logger(PrismaClientExceptionFilter.name);

  private errorCodesStatusMapping: ErrorCodesStatusMapping = {
    P2000: HttpStatus.BAD_REQUEST,
    P2002: HttpStatus.CONFLICT,
    P2025: HttpStatus.NOT_FOUND,
  };

  catch(exception: any, host: ArgumentsHost) {
    console.log({ exception, name: exception.name });
    if (
      exception.name === PGPrisma.PrismaClientKnownRequestError.name ||
      exception.name === 'NotFoundError'
    ) {
      return this.catchClientKnownRequestError(exception, host);
    } else if (exception.name === PGPrisma.PrismaClientValidationError.name) {
      return this.catchClientValidationError(exception, host);
    } else {
      super.catch(exception, host);
    }
  }

  private catchClientKnownRequestError(
    exception: PGPrisma.PrismaClientKnownRequestError,
    host: ArgumentsHost,
  ) {
    const statusCode = this.errorCodesStatusMapping[exception.code];
    let message = this.exceptionShortMessage(exception.message);
    let errorName = exception.name;
    if (exception.code === 'P2002') {
      if (exception.meta !== null) {
        message =
          ((exception.meta?.target ?? ([] as any)).join(', ') as string) +
          ' already exists.';
      }
    } else if (exception.code === 'P2025') {
      message = exception.message;
      errorName = 'Not Found';
    }

    if (!Object.keys(this.errorCodesStatusMapping).includes(exception.code)) {
      return super.catch(exception, host);
    }

    super.catch(
      new HttpException({ statusCode, message, error: errorName }, statusCode),
      host,
    );
  }

  private catchClientValidationError(
    exception: PGPrisma.PrismaClientValidationError,
    host: ArgumentsHost,
  ) {
    const statusCode = HttpStatus.BAD_REQUEST;
    const message = this.getLastLine(exception.message);
    if (message.includes('Argument `data` is missing.')) {
      return super.catch(
        new HttpException(
          {
            statusCode: HttpStatus.UNPROCESSABLE_ENTITY,
            message: 'Data is missing',
            error: 'Validation Error',
          },
          HttpStatus.UNPROCESSABLE_ENTITY,
        ),
        host,
      );
    }
    super.catch(
      new HttpException(
        { statusCode, message, error: exception.name },
        statusCode,
      ),
      host,
    );
  }

  private exceptionShortMessage(message: string): string {
    const shortMessage = message.substring(message.indexOf('→'));

    return shortMessage
      .substring(shortMessage.indexOf('\n'))
      .replace(/\n/g, '')
      .trim();
  }

  private getLastLine(message: string): string {
    const lines = message.split('\n');
    return lines[lines.length - 1].trim();
  }
}
