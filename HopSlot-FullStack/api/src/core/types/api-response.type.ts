export interface APIResponse<T = undefined> {
  data?: T;
  message: string;
  error?: string;
}
