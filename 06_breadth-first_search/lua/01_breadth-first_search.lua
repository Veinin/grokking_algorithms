local function person_is_seller(name)
	return name:sub(-1) == 'm'
end

graph = {}
graph["you"] = {"alice", "bob", "claire"}
graph["bob"] = {"anuj", "peggy"}
graph["alice"] = {"peggy"}
graph["claire"] = {"thom", "jonny"}
graph["anuj"] = {}
graph["peggy"] = {}
graph["thom"] = {}
graph["jonny"] = {}

local function append(a1, a2)
	table.move(a1, 1, #a1, #a2 + 1, a2)
end

local function search(name)
	local search_queue = {}
	append(graph[name], search_queue)
	-- This array is how you keep track of which people you've searched before.
	local searched = {}
	while #search_queue > 0 do
		local person = table.remove(search_queue)
		if not searched[person] then
			if person_is_seller(person) then
				print(person .. " is a mango seller!")
				return true
			else
				append(graph[person], search_queue)
				-- Marks this person as searched
				searched[person] = true
			end
		end
	end
end

search("you")