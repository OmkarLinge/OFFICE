-- while_loop.lua
-- Example of while loop

local count = 1

print("Counting until 5")

while count <= 5 do
    print("Count:", count)
    count = count + 1   -- increment
end


-- What Happened: 
--              Condition checked before every loop run.
--              Loop stops when condition becomes false.

--  Flow:
--       Check condition → Run → Update → Repeat

-- Learning:
--      Condition-based looping
--      Manual control