-- https://projecteuler.net/problem=7
local p = 6
local num = 13

while p < 10001 do
	num = num + 1
	local pass = true
	for i = 2, num - 1 do
		if num % i == 0 then
			pass = false
			break
		end
	end
	if pass then
		p = p + 1
	end
end
print(num)