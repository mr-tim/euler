triangle = 
  "75
  95 64
  17 47 82
  18 35 87 10
  20 04 82 47 65
  19 01 23 75 03 34
  88 02 77 73 07 63 67
  99 65 04 28 06 16 70 92
  41 41 26 56 83 40 80 70 33
  41 48 72 33 47 32 37 16 94 29
  53 71 44 65 25 43 91 52 97 51 14
  70 11 33 28 77 73 17 78 39 68 17 57
  91 71 52 38 17 14 91 43 58 50 27 29 48
  63 66 04 68 89 53 67 30 73 16 69 87 40 31
  04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

#0
#0
#0 1
#-0.5 0.5
#0 1 2
#-1 0 1
#-1.5 -0.5 0.5 1.5

#triangle =
#  "3
#  7 4
#  2 4 6
#  8 5 9 3"

  
triangle = ((triangle.split("\n").collect { |i| i.strip }).collect { |i| i.split(" ").collect { |j| j.to_i } } )

puts triangle.inspect

def i2c(level, index)
  -(0.5*level) + index #+ ((index % 2 == 0) ? 0 : +0.5)
end

def c2i(level, coord)
  coord + 0.5*level
end

max_sums = ((0..triangle.length-1).collect { |level| (0..level).collect { |i| 0 } } )
max_sums[0][0] = triangle[0][0]
puts max_sums.inspect


(1..triangle.length-1).each do |level|
  puts "working on level #{level}"
  values = triangle[level]
  (0..values.length-1).each do |i|
    max = 0
    
    c = i2c(level, i)
    maxes = []
    unless c2i(level-1, c-0.5) < 0
      maxes << max_sums[level-1][c2i(level-1, c-0.5)]
    end
    unless c2i(level-1, c+0.5) > triangle[level-1].length-1
      maxes << max_sums[level-1][c2i(level-1, c+0.5)]
    end
    
    max_sums[level][i] = maxes.max + triangle[level][i]
  end
end

puts max_sums.inspect



