# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any 
# remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 
# 20?


def is_still_common_factor?(factors, value)
  factors.each { |f| return false if value % f != 0 }
  true
end

max = 20
all_factors = (2..max)
max_product = all_factors.inject(1) { |i, j| i*j }
product = max_product
max.downto(2).each do |factor|
  while is_still_common_factor?(all_factors, product/factor)
    product /= factor
  end
end

puts "Smallest common product: #{product}"