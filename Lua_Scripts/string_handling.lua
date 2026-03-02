-- string_handling.lua
-- Working with strings

print("Enter a mission name:")
local mission = io.read()

print("Original:", mission)
print("Uppercase:", string.upper(mission))
print("Length:", string.len(mission))

-- Explanation:-
-- Lua provides string functions:
--              string.upper() → capital letters
--              string.len() → character count

-- Learning:
--          Text processing
--          Built-in string utilities

