-- https://projecteuler.net/problem=10
local num = 2000000

local int = { }
for i = 2, num do
	int[i] = true
end

for i = 2, num ^ .5 do
	if int[i] then
		for j = i * i, num, i do
			int[j] = false
		end
	end
end

local sum = 0
for i = 2, num do
	if int[i] then
		sum = sum + i
	end
end

print(sum)