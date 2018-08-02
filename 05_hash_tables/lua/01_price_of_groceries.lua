book = {}
book["apple"] = 0.67
book["milk"] = 1.49
book["avocado"] = 1.49

for k, v in pairs(book) do
    print(k .. ": " .. v)
end