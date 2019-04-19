-- https://projecteuler.net/problem=3
-- • Required google research
local num = 600851475143
local i = 2
while i < num ^ .5 do
	while num % i == 0 do
		num = num / i
	end
	i = i + 1
end
print(num)