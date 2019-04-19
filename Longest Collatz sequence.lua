-- https://projecteuler.net/problem=14
local chain = { 0, 0 }

local tmp, seq
for num = 13, 1000000 do
	tmp = num
	seq = 1
	while tmp > 1 do
		if tmp % 2 == 0 then
			tmp = tmp / 2
		else
			tmp = 3 * tmp + 1
		end
		seq = seq + 1
	end
	if seq > chain[2] then
		chain = { num, seq }
	end
end

print(chain[1])