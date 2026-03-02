-- tables.lua
-- Tables store grouped data

local student = {
    name = "Omkar",
    age = 21,
    course = "AI"
}

print("Student Name:", student.name)

print("Enter updated age:")
student.age = tonumber(io.read())

print("Updated Age:", student.age)


-- Explanation :- 
-- Tables act like:
--                  Arrays
--                  Objects
--                  Dictionaries

-- Data accessed using:
-- table.key

-- Learning:
--          Structured data storage
--          Updating values dynamically