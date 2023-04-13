declare module "fiber" {
  interface LuaFiber extends LuaUserData {
    id : number;
  }

  const new_: (this: void, f: Function, ...args: unknown[]) => LuaFiber | null;
  const create: (this: void, f: Function, ...args: unknown[]) => LuaFiber | null;
  const yield: (this: void) => void;
  const id: (this: void, fib?: LuaFiber | null) => number;
  const status: (this: void, fib?: LuaFiber | null) => "running" | "dead" | "suspended" | null;

  export { new_ as new, create, yield, id, status };
  export type { LuaFiber };
}
