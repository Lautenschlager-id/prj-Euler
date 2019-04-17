-- https://projecteuler.net/problem=6
local each, total = 0, 0
for i = 1, 100 do
	each = each + (i * i)
	total = total + i
end

print((total * total) - each)