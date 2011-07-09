value = 2**1000

sum = 0

while value > 0
  x = value % 10
  sum += x
  value -= x
  value /= 10
end

puts sum