length = 10

values = 0.upto(length-1).to_a

p = values.permutation.to_a.collect do |x|
  result = ""
  x.each { |i| result << i.to_s }
  result
end

puts p[999999..1000001]