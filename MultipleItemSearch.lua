print("Leave the prompt empty to stop inserting new items.")
while true do
	print('\n\n')
	
	local items = {}
	local cmd
	while #items == 0 or cmd ~= '' do
		print("Item #"..(#items+1)..": ")
		cmd = io.read()
		if cmd ~= '' then
			table.insert(items, cmd)
		end
	end

	local limit = math.huge
	for _,v in ipairs(items) do
		limit = math.min(limit, #v)
	end

	local str = "^"
	for n=1,limit do
		str = str .. '['
		for _,v in ipairs(items) do
			str = str .. string.sub(v, n,n)
		end
		str = str .. ']'
	end
	print(str)
end