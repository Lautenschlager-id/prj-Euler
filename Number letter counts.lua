-- https://projecteuler.net/problem=17
local numbers = {
	[1] = "one",
	[2] = "two",
	[3] = "three",
	[4] = "four",
	[5] = "five",
	[6] = "six",
	[7] = "seven",
	[8] = "eight",
	[9] = "nine",
	[10] = "ten",
	[11] = "eleven",
	[12] = "twelve",
	[13] = "thirteen",
	[14] = "fourteen",
	[15] = "fifteen",
	[16] = "sixteen",
	[17] = "seventeen",
	[18] = "eighteen",
	[19] = "nineteen",
	[20] = "twenty",
	[30] = "thirty",
	[40] = "forty",
	[50] = "fifty",
	[60] = "sixty",
	[70] = "seventy",
	[80] = "eighty",
	[90] = "ninety",
	[100] = "hundred"
}

for k, v in next, numbers do
	numbers[k] = #v
end

local getNumber
getNumber = function(i)
	if i < 21 or (i < 100 and i % 10 == 0) then
		return numbers[i]
	elseif i < 100 then
		local u = i % 10
		return numbers[i - u] + numbers[u]
	else
		local d = i % 100
		local u = (i - d) / 100
		-- 7 from hundred, 3 from and
		return numbers[u] + 7 + (d > 0 and (3 + getNumber(d)) or 0)
	end
end

local sum = 11 -- from 1000
for i = 1, 999 do
	sum = sum + getNumber(i)
end

print(sum)