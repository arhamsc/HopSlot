interface Opts {
  secret?: Buffer;
  salt?: Buffer;
}

export interface ArgonOptions {
  argon: {
    at: Opts;
    rt: Opts;
    common: Opts;
  };
}
