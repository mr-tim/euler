class Array
  def sum
    self.inject(0) { |t, x| t+=x }
  end
end

class Fixnum
  @@abundant_nos = {}
  def divisors
    result = []
    max = self-1
    i = 1
    while i < max do
      if self % i == 0
        result << i
        result << self/i unless i == 1 or i == self/i
        max = self/i
      end
      i+=1
    end
    return result
  end
  
  def deficient?
    divisors.sum < self
  end
  
  def abundant?
    @@abundant_nos[self] = divisors.sum > self unless @@abundant_nos.has_key? self
    #divisors.sum > self
    @@abundant_nos[self]
  end
end

results = []

1.upto(28125) do |i|
#24.upto(26) do |i|
  #puts i
  expressible = false
  1.upto(i) do |x|
    #puts "x: #{x} => #{x.divisors} #{x.abundant?}, (i-x): #{i-x} => #{(i-x).divisors} #{(i-x).abundant?}"
    if x.abundant? and (i-x).abundant?
      #puts i
      expressible = true
      break
    end
  end
  
  if not expressible
    puts "#{i} is inexpressible"
    results << i
  end
end

puts results.sort.inspect

puts results.sum
