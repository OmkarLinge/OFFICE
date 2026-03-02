-- Error Handling Example

function divide(a, b)
    if b == 0 then
        error("Division by zero!")
    end
    return a / b
end

print(divide(10, 2))
-- print(divide(10, 0)) -- uncomment to see error
