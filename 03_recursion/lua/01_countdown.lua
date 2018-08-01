local function countdown(i)
    print(i)

    if i <= 0 then
        return
    else
        countdown(i - 1)
    end
end

countdown(5)