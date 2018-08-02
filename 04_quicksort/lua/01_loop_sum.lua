local function sum(arr)
    local total = 0
    for _, v in ipairs(arr) do
        total = total + v
    end
    return total
end

print(sum({1, 2, 3, 4}))