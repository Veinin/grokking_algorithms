local function greet2(name)
    print("how are your, " .. name .. "?")
end

local function bye()
    print("ok bye!")
end

local function greet(name)
    print("hello, " .. name .. "!")
    greet2(name)
    print("getting ready to say bye...")
    bye()
end

greet("adit")