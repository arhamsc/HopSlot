import {
  Body,
  Controller,
  HttpCode,
  HttpStatus,
  Post,
  UseGuards,
} from '@nestjs/common';
import { AuthService } from './auth.service';
import { Public } from 'src/core/decorators/public.decorator';
import { SignUpDto } from './dtos/sign-up.dto';
import { CheckForUsernameEmailDto } from './dtos/check-for-username-email.dto';
import { LoginDto } from './dtos/login.dto';
import { GetCurrentUser } from 'src/core/decorators/get-current-user.decorator';
import { RtGuard } from 'src/core/guards/rt/rt.guard';
import { AllowAC } from 'src/core/decorators/allow-ac/allow-ac.decorator';

@Controller('auth')
@AllowAC()
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('/signup')
  @Public()
  @HttpCode(HttpStatus.CREATED)
  signup(@Body() signUpDto: SignUpDto) {
    return this.authService.signUpLocal(signUpDto);
  }

  @Post('/check-for-username-email')
  @Public()
  checkForUsernameEmail(
    @Body() checkForUsernameEmailDto: CheckForUsernameEmailDto,
  ) {
    return this.authService.checkForUsernameEmail(checkForUsernameEmailDto);
  }

  @Post('/login')
  @Public()
  login(@Body() loginDto: LoginDto) {
    return this.authService.login(loginDto);
  }

  @Post('logout')
  @HttpCode(HttpStatus.OK)
  logout(@GetCurrentUser('id') userId: string) {
    return this.authService.logout(userId);
  }

  @Public()
  @UseGuards(RtGuard)
  @Post('refresh')
  @HttpCode(HttpStatus.OK)
  refreshTokens(
    @GetCurrentUser('id') userId: string,
    @GetCurrentUser('refreshToken') refreshToken: string,
  ) {
    return this.authService.refreshToken(userId, refreshToken);
  }
}
