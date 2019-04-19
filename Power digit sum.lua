-- https://projecteuler.net/problem=16
-- Number generated using Python; 2**1000

-- tostring(2 ^ 1000)
local num = "10715086071862673209484250490600018105614048117055336074437503883703510511249361224931983788156958581275946729175531468251871452856923140435984577574698574803934567774824230985421074605062371141877954182153046474983581941267398767559165543946077062914571196477686542167660429831652624386837205668069376"

--local dec, zeroes
--num, dec, zeroes = string.match(num, "(%d+).?(%d*)[Ee]?%+?(%d*)")

--zeroes = tonumber(zeroes) or 0

--zeroes = zeroes - #num
--num = num .. dec .. string.rep('0', zeroes)

local sum = 0
for i = 1, #num do
	sum = sum + string.sub(num, i, i)
end

print(sum)