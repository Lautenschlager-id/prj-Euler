-- https://projecteuler.net/problem=5
local num = 2520
while true do
	local right = true
	for i = 2, 20 do
		if num % i ~= 0 then
			right = false
			break
		end
	end
	if right then
		return print(num)
	else
		num = num + 20
	end
end