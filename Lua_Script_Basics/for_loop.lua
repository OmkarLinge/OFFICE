-- for_loop.lua
-- Example of for loop

print("Enter number to print table:")
local num = tonumber(io.read())

-- loop runs from 1 to 10
for i = 1, 10 do
    print(num .. " x " .. i .. " = " .. (num * i))
end


-- What Happened: 
--          Loop repeats task automatically.
--          i increases every iteration.
--          Multiplication table generated.

-- Syntax
-- for start, end_value do

-- Learning:
--      Controlled repetition
--      Loop counters