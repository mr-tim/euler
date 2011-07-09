# A palindromic number reads the same both ways. The largest palindrome made 
# from the product of two 2-digit numbers is 9009 = 91 x 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
no_of_digits = 3
lowest_factor = 10**(no_of_digits-1)
highest_factor = 10**no_of_digits-1
lower_bound = lowest_factor**2
upper_bound = highest_factor**2

puts "Palindrome must lie between #{lower_bound}-#{upper_bound}"

def is_palindrome?(value)
  value.to_s.reverse == value.to_s
end

def find_palindromes(range_start, range_end)
  range = range_start..range_end
  if range_start > range_end
    range = range_start.downto range_end
  end
  range.each do |i|
    yield i if is_palindrome? i
  end
end

result = 0
factor = 0

find_palindromes(upper_bound, lower_bound) do |candidate|
  x = highest_factor
  while x >= lowest_factor
    if ((candidate % x == 0) and (candidate/x >= lowest_factor) and (candidate/x <= highest_factor))
      result = candidate
      factor = x
      break
    end
    x -= 1
  end
  break if result != 0
end

puts "Result is: #{result} = #{factor}x#{result/factor}"




