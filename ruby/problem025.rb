prev=1
value=1

x = ""

term = 2

while x.length < 1000
  term += 1
  old = value
  value = prev+value
  prev = old
  x=value.to_s
  puts "#{term}: #{x} (#{x.length})"
end