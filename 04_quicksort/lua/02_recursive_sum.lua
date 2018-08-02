local function sum(list)
    if #list == 0 then
        return 0
    end
    return table.remove(list, 1) + sum(list)
end

print(sum({1, 2, 3, 4}))