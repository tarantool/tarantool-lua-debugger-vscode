declare module "fiber" {
  interface LuaFiber extends LuaUserData {
    id : number;
  }

  const new_: (this: void, f: Function, ...args: unknown[]) => LuaFiber | null;
  const create: (this: void, f: Function, ...args: unknown[]) => LuaFiber | null;
  const yield: (this: void) => void;

  export { new_ as new, create, yield };
  export type { LuaFiber };
}
