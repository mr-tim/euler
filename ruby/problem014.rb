@path_length_cache = {}

def path_length(n, depth)
  #print " -> #{n}"
  if @path_length_cache.has_key? n
    #puts " Cache hit for n=#{n} => #{@path_length_cache[n]}"
    return @path_length_cache[n]
  elsif n == 1
    #puts " => #{depth} terms"
    return 1
  else
    if n % 2 == 0
      result = path_length(n/2, depth+1)+1
    else
      result = path_length(3*n+1, depth+1)+1
    end
    @path_length_cache[n] = result
    return result
  end
end

max_length = 0
max_length_start = 0

(1..999999).each do |start|
  length = path_length(start, 1)
  if length > max_length
    max_length = length
    max_length_start = start
    puts "New max length #{max_length} starting from #{max_length_start}"
  end
end