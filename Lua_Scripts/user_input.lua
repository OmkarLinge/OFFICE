-- user_input.lua
-- This program takes real input from the user

print("Enter your name:")
local name = io.read()   -- waits for keyboard input

print("Enter your age:")
local age = tonumber(io.read()) -- converts input to number

print("Hello " .. name)
print("Next year your age will be:", age + 1)


-- Explanation: 
--              io.read() pauses program and waits for user input.
--              Input is normally text → converted using tonumber().
--              Program performs calculation using real values.

-- Learning:
--          Runtime input
--          String + number handling