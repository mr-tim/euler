load '../data/names.txt'

scores = Names.sort.map do |x|
  x.chars.inject(0) { |t,c| t+c[0]-64 }
end

sum = 0

scores.each_index do |i|
  sum += (i+1)*scores[i]
end

puts sum