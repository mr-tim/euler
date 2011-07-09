class Fixnum
  def divisors
    result = []
    1.upto(self-1) do |i|
      result << i if self % i == 0
    end
    return result
  end
end

class Array
  def sum
    self.inject(0) { |t, x| t+=x }
  end
end

amicables = []

max = 10000

2.upto(9999) do |x|
  a = x.divisors.sum
  if a.divisors.sum == x and x != a
    amicables << x unless amicables.include? x
    amicables << a unless amicables.include? a
    puts "#{[x, a].inspect} #{amicables.sum}"
  end
end

puts amicables.inspect