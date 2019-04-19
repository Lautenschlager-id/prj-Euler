-- https://projecteuler.net/problem=15
-- • Required google research
local fact = function(n)
	local o = 1
	for i = 2, n do
		o = o * i
	end
	return o
end

local grid = 20

-- Lattice's path is defined by ( n + k _ n ); binomial coefficient is defined by ( n! / k!(n-k)! )
print(fact(grid + grid) / (fact(grid) ^ 2))