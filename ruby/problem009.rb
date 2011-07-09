# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
#
# a2 + b2 = c2
#
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
a = 1
while 1000-a > 2
  b = a + 1
  c = 1000-a-b
  while b < c
    puts "#{a}x#{b}x#{c}=#{a*b*c}" if (a**2 + b**2 == c**2)
    b+=1
    c = 1000-a-b
  end
  a+=1
end