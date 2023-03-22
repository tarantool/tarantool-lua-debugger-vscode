declare interface LuaFiber extends LuaUserData {
  id : number;
}

export function isFiber(val: unknown): val is LuaFiber;

declare module "fiber" {
  const exports: {
    // new is a reserved keyword in TS, hence use JSON workaround
    // https://typescripttolua.github.io/docs/advanced/writing-declarations#keyword-workarounds
    new: (this: void, f: Function, ...args: unknown[]) => LuaFiber | null;
    create: (this: void, f: Function, ...args: unknown[]) => LuaFiber | null;
    // start: (this: void, fiber: LuaFiber) => void;
    yield: (this: void) => void;
  };
}
