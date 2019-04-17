-- https://projecteuler.net/problem=9
local c
for a = 1, 1000 do
	for b = 1, 1000 do
		c = (a ^ 2 + b ^ 2) ^ .5
		if a + b + c == 1000 then
			return print(a * b * c)
		end
	end
end