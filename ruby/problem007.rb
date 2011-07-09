# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime 
# is 13.
#
# What is the 10001st prime number?

def is_prime?(value)
  (2..Math.sqrt(value)+1).each { |i| return false if value % i == 0 }
  true
end

max_count = 10001
count = max_count
primes = [2, 3]
count -= 2
candidate = primes[-1]+2

prime_file = File.new('primes.txt', 'w+')

prime_file.puts 2
prime_file.puts 3

tick = Time.now
while count > 0
  while !is_prime? candidate
    candidate += 2
  end
  #puts "#{max_count+1-count}th prime is #{candidate}"
  #prime_file.puts(candidate)
  candidate += 2
  count -= 1
  #if count % 100 == 0
  #  puts "#{count} = #{candidate-2} after #{Time.now - tick}"
  #  tick = Time.now
  #end
end
puts "#{max_count} = #{candidate-2}"