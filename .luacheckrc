std = "luajit"
globals = {"box", "_TARANTOOL", "tonumber64", "utf8"}
ignore = {
    -- Accessing an undefined field of a global variable <debug>.
    "143/debug",
    -- Accessing an undefined field of a global variable <os>.
    "143/os",
    -- Accessing an undefined field of a global variable <string>.
    "143/string",
    -- Accessing an undefined field of a global variable <table>.
    "143/table",
    -- Unused argument <self>.
    "212/self",
    -- Redefining a local variable.
    "411",
    -- Redefining an argument.
    "412",
    -- Shadowing a local variable.
    "421",
    -- Shadowing an upvalue.
    "431",
    -- Shadowing an upvalue argument.
    "432",
    -- Unused variable with `_` prefix.
    "212/_.*",
    -- Unused loop variable with `_` prefix.
    "213/_.*",
}

include_files = {
    "**/*.lua",
}

exclude_files = {
    "debug-workspace/*.lua",
    ".rocks/**/*.lua",
    ".git/**/*.lua",
}
