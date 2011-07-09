# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

def primes_up_to(limit)
  root_limit = Math.sqrt(limit)
  values = (2..limit).to_a
  j = 0
  candidate = values[j]
  while candidate < root_limit
    values.delete_if { |i| (i % candidate == 0 and i != candidate)  }
    j+=1
    puts "#{j}: #{values.length} values remain"
    candidate = values[j]
  end
  values
end

sum = 0
limit = 2000000
n = 0

primes = primes_up_to(limit)
puts "Primes up to #{limit}: #{primes.inspect}"
sum = primes.inject(0) { |s, v| s+=v }
puts "Sum of all primes less than #{limit} is #{sum}"