import {
  ArgumentsHost,
  Catch,
  HttpException,
  HttpServer,
  HttpStatus,
  Logger,
} from '@nestjs/common';
import { BaseExceptionFilter } from '@nestjs/core';
import { Prisma as PGPrisma } from '@prisma/postgres/client';
import { Prisma as MDPrisma } from '@prisma/mongo/client';

export type ErrorCodesStatusMapping = {
  [key: string]: number;
};

@Catch(
  PGPrisma.PrismaClientValidationError,
  PGPrisma.PrismaClientKnownRequestError,
  PGPrisma.PrismaClientUnknownRequestError,
  MDPrisma.PrismaClientValidationError,
  MDPrisma.PrismaClientKnownRequestError,
  MDPrisma.PrismaClientUnknownRequestError,
)
export class PrismaClientExceptionFilter extends BaseExceptionFilter {
  logger = new Logger(PrismaClientExceptionFilter.name);
  private errorCodesStatusMapping: ErrorCodesStatusMapping = {
    P2000: HttpStatus.BAD_REQUEST,
    P2002: HttpStatus.CONFLICT,
    P2025: HttpStatus.NOT_FOUND,
  };
  constructor(
    applicationRef?: HttpServer,
    errorCodesStatusMapping?: ErrorCodesStatusMapping,
  ) {
    super(applicationRef);

    if (errorCodesStatusMapping) {
      this.errorCodesStatusMapping = Object.assign(
        this.errorCodesStatusMapping,
        errorCodesStatusMapping,
      );
    }
  }
  catch(exception: any, host: ArgumentsHost) {
    this.logger.warn({ exception });
    if (
      exception instanceof PGPrisma.PrismaClientKnownRequestError ||
      exception instanceof MDPrisma.PrismaClientKnownRequestError
    ) {
      return this.catchClientKnownRequestError(exception, host);
    } else if (
      exception instanceof PGPrisma.PrismaClientValidationError ||
      exception instanceof MDPrisma.PrismaClientValidationError
    ) {
      return this.catchClientValidationError(exception, host);
    }
  }

  private catchClientKnownRequestError(
    exception:
      | PGPrisma.PrismaClientKnownRequestError
      | MDPrisma.PrismaClientKnownRequestError,
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
    exception:
      | PGPrisma.PrismaClientValidationError
      | MDPrisma.PrismaClientValidationError,
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
