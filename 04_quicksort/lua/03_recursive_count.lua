local function count(list)
    if #list == 0 then
        return 0
    end
    table.remove(list)
    return 1 + count(list)
end

print(count({1, 2, 3, 4}))