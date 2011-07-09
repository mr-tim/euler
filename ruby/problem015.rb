class Fixnum
  def fact
    downto(1).inject(1) { |x,i| x*i }
  end
end

def count_routes_from(x, y, w, h, sum)
  if x < w
    sum = count_routes_from(x+1, y, w, h, sum)
  end
  if y < h
    sum = count_routes_from(x, y+1, w, h, sum)
  end
  if x==w and y==h
    return sum+1
  else
    return sum
  end
end

(1..20).each do |i|
  l = 2*i
  paths = l.fact/(i.fact*(l-i).fact)
  puts "%2i %2i %20i" % [i, l, paths]
end
