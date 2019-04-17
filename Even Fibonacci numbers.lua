-- https://projecteuler.net/problem=2
local lim = 4e6 - 2

local tmp, last, now = 0, 1, 2

local even = 2

while now < lim do
	tmp = last
	last = now
	now = now + tmp
	if now % 2 == 0 then
		even = even + now
	end
end

print(even)