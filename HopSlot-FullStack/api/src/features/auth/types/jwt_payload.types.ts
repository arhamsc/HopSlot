export interface JwtPayload {
  username: string;
  email: string;
  id: string;
  role: string;
}

export interface JwtRTPayload extends JwtPayload {
  refreshToken: string;
}
