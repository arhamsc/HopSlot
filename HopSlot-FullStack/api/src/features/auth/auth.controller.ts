import { Body, Controller, HttpCode, HttpStatus, Post } from '@nestjs/common';
import { AuthService } from './auth.service';
import { Public } from 'src/core/decorators/public.decorator';
import { SignUpDto } from './dtos/sign-up.dto';
import { CheckForUsernameEmailDto } from './dtos/check-for-username-email.dto';
import { LoginDto } from './dtos/login.dto';

@Controller('auth')
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
}
