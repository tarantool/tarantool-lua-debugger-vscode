local date = require 'datetime'
local fiber = require('fiber')

print(#arg)
for i = -1,#arg,1 do
    if arg[i] ~= nil then
        print('arg['..i..'] = ' .. arg[i])
    end
end

local function co_type()
    return coroutine.running() and type(coroutine.running()) or ''
end

local function co_status()
    return coroutine.running() and coroutine.status(coroutine.running()) or nil
end

print('1.out:', fiber.id())
print('1a.out', co_status())
print('1b.out', co_type())

local function fiber_function()
    print('1.in:', "I'm a fiber")
    print('2.in:', fiber.id())
    print('2a.in', co_status())
    print('2b.in', co_type())
    fiber.yield()
    fiber.sleep(10)
    print('3.in:')
end
print('2.out:', fiber.id())

local fiber_object = fiber.new(fiber_function)
print('3.out:', "Fiber started")
fiber.yield()

local T = date.new{hour = 3, tzoffset = '+0300'}
print('4.out:', T)

local fmt = '%Y-%m-%dT%H%M%z'
local S  = T:format(fmt)
print('5.out:', S)
local T1 = date.parse(S, {format = fmt})
print('6.out:', T1)
fiber.sleep(30)

os.exit(0)
