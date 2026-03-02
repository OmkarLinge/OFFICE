-- Conditional_loops.lua
-- Using conditions (if-else)

print("Enter your marks:")
local marks = tonumber(io.read())

if marks >= 90 then
    print("Grade: A")
elseif marks >= 75 then
    print("Grade: B")
elseif marks >= 50 then
    print("Grade: C")
else
    print("Fail")
end


-- What Happened
-- Program checks conditions step-by-step:
-- User inputs marks.
-- Lua evaluates conditions.
-- Matching block executes.

-- Learning:
--      Decision making
--      if / elseif / else