-- math_operations.lua
-- Basic mathematical operations

print("Enter a number:")
local num = tonumber(io.read())

print("Square Root:", math.sqrt(num))
print("Square:", num * num)
print("Rounded Down:", math.floor(num))

-- Explanation
-- Lua math library provides:
--                      math.sqrt() → square root
--                      math.floor() → round down
-- Learning:
--          Mathematical computation
--          Built-in math module