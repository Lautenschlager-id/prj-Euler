-- https://projecteuler.net/problem=12
-- • Required google research
local num = 500

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

local primes, counter = { }, 0
for i = 1, num do
	if int[i] then
		counter = counter + 1
		primes[counter] = i
	end
end

local primeFactorisation = function(num)
	local n, tmp, e = 1, num

	for i = 1, counter do
		e = 1
		while tmp % primes[i] == 0 do
			e = e + 1
			tmp = tmp / primes[i]
		end
		n = n * e

		if tmp == 1 then
			return n
		end
	end
	return n
end

local c = 0
local i, factE, factO = 2, 2, 2
while c < num do
	if i % 2 == 0 then
		factE = primeFactorisation(i + 1)
	else
		factO = primeFactorisation((i + 1) / 2)
	end
	c = factE * factO
	i = i + 1
end

print(i * (i - 1) / 2)