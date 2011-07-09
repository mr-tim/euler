class Fixnum
  def fact
    downto(1).inject(1) { |x,y| x*y }
  end
end

puts (100.fact.to_s.chars.inject(0) { |t, v| t+v.to_i })