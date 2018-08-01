local function findSmallest(arr)
    local smallest = arr[1]
    local smallest_index = 1

    for i = 2, #arr do
        if arr[i] < smallest then
            smallest = arr[i]
            smallest_index = i
        end
    end

    return smallest_index
end

local function selectionSort(arr)
    local newArr = {}
    local smallest

    for i = 1, #arr do
        smallest = findSmallest(arr)
        table.insert(newArr, table.remove(arr, smallest))
    end

    return newArr
end

local newArr = selectionSort({5, 3, 6, 2, 10})
print(table.concat(newArr, ' '))