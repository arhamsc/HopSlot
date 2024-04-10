import {
  ArgumentsHost,
  Catch,
  HttpException,
  HttpServer,
  HttpStatus,
} from '@nestjs/common';
import { BaseExceptionFilter } from '@nestjs/core';
import { PrismaClientKnownRequestError } from '@prisma/client/runtime/library';

export type ErrorCodesStatusMapping = {
  [key: string]: number;
};

@Catch(PrismaClientKnownRequestError)
export class PrismaClientExceptionFilter extends BaseExceptionFilter {
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
  catch(exception: PrismaClientKnownRequestError | any, host: ArgumentsHost) {
    if (exception instanceof PrismaClientKnownRequestError) {
      return this.catchClientKnownRequestError(exception, host);
    }
  }

  private catchClientKnownRequestError(
    exception: PrismaClientKnownRequestError,
    host: ArgumentsHost,
  ) {
    const statusCode = this.errorCodesStatusMapping[exception.code];
    let message = this.exceptionShortMessage(exception.message);

    if (exception.code === 'P2002') {
      if (exception.meta !== null) {
        // if (exception.meta?.target ?? [][0] === 'familyHeadId') {
        //   message = 'Family head cannot create multiple families';
        // } else {
        message =
          ((exception.meta?.target ?? ([] as any)).join(', ') as string) +
          ' already exists.';
        // }
      }
    }

    if (!Object.keys(this.errorCodesStatusMapping).includes(exception.code)) {
      return super.catch(exception, host);
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
}
