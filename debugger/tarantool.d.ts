declare module "tarantool" {
  export namespace debug {
    export function getsources(filePath: string): string | null;
  }
}
