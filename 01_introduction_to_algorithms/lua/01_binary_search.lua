local function binary_search(list, item)
    local low = 1
    local high = #list
    local mid

    while low < high do
        mid = math.ceil(low + (high - low) / 2)
        guess = list[mid]
        if guess == item then
            return mid
        elseif guess > mid then
            high = mid - 1
        else
            low = mid + 1
        end
    end

    return nil
end

my_list = {1, 3, 5, 7, 9}
print(binary_search(my_list, 3))  -- => 2

print(binary_search(my_list, -1)) -- => nil