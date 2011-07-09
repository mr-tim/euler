# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

def is_prime?(value)
  test = 2
  while test < value/2 do
    return false if value % test == 0
    test += 1
  end
  return true
end

def prime_factors_of(value)
  result = []
  
  remaining = value
  
  while remaining > 1 do
    test = 2
    while test < remaining do
      break if is_prime?(test) and remaining % test == 0
      test+=1
    end
    puts "Found prime factor: #{test}"
    remaining /= test
    result << test
  end
  
  return result
end

def highest_prime_factor_of(value)
  remaining = value
  last_factor = 1
  factor = 2
  while remaining > 1
    while remaining % factor == 0
      last_factor = factor
      remaining /= factor
    end
    factor += 1
  end
  return last_factor
end

#target = 13195
target = 600851475143
start_time = Time.now
prime_factors = prime_factors_of target
end_time = Time.now
puts "Time taken using old method: #{end_time-start_time}" 
puts "Prime factors of #{target}: #{prime_factors.inspect}"
puts "Highest prime factor of #{target}: #{prime_factors.max}"

start_time = Time.now
highest = highest_prime_factor_of(target)
end_time = Time.now
puts "Calculated #{highest} in #{end_time-start_time}"
