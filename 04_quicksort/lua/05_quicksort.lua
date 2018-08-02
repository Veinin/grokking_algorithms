local function partition(array, left, right)
    local pivot = array[right]
    local i = left
    local j = right - 1

    while true do
        while array[i] < pivot do
            i = i + 1
        end

        while array[j] > pivot and j > i do
            j = j - 1
        end

        if i >= j then
            break
        end

        array[i], array[j] = array[j], array[i]
    end

    array[i], array[right] = array[right], array[i]

    return i
end

local function quicksort(array, left, right)
    if left < right then
        local pivot = partition(array, left, right)
        quicksort(array, left, pivot - 1)
        quicksort(array, pivot + 1, right)
    end
end

local array = {10, 5, 2, 3}
quicksort(array, 1, #array)
print(table.concat(array, " "))