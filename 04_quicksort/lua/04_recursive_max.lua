local function max(list)
    if #list == 2 then
        return list[1] > list[2] and list[1] or list[2]
    end
    local temp = table.remove(list, 1)
    local sub_max = max(list)
    return temp > sub_max and temp or sub_max
end

print(max{1, 4, 2, 5, 3})