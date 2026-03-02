-- functions.lua
-- Example of creating and using functions

-- function definition
function calculateArea(length, width)
    local area = length * width
    return area
end

print("Enter length:")
local l = tonumber(io.read())

print("Enter width:")
local w = tonumber(io.read())

local result = calculateArea(l, w)

print("Area is:", result)



-- Explanation :
-- Function groups reusable logic.
-- Inputs passed as parameters.
-- return sends result back.

-- Learning:
--          Function creation
--          Parameters
--          Return values
