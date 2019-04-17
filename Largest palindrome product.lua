-- https://projecteuler.net/problem=4
local mul
local largest = 0
local x = { }
for i = 999, 100, -1 do
	for j = 999, 100, -1 do
		mul = tostring(i * j)
		if mul == string.reverse(mul) then
			mul = tonumber(mul)
			if mul > largest then
				largest = mul
			end
		end
	end
end
print(largest)