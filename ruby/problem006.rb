# The sum of the squares of the first ten natural numbers is,
#
#     12 + 22 + ... + 102 = 385
#
# The square of the sum of the first ten natural numbers is,
#
#     (1 + 2 + ... + 10)2 = 552 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the 
# square of the sum is 3025  385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

(2..100).each do |max|
  range = (1..max)
  sum_of_squares = (range.inject(0) { |sum, i| sum + i*i })
  square_of_sums = (range.inject(0) { |sum, i| sum + i }) ** 2
  puts "#{max}\t#{square_of_sums-sum_of_squares}"
end