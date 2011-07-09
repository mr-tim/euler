def format(value)
  #puts "Formatting: #{value}"
  digits = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  decades = ['onety', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  powers = ['thousand', 'hundred', '', '']
  
  str = ""
  
  need_and = false
  
  if (value >= 1000)
    #puts 'value is >= 1000'
    thousands = (value/1000)%1000
    str << format(thousands)
    str << 'thousand'
    value = value % 1000
  end
  
  if (value >= 100)
    #puts 'value is >= 100'
    hundreds = (value/100)%10
    #puts "hundreds: #{hundreds}"
    str << format(hundreds)
    str << 'hundred'
    value = value % 100
    need_and = true if value > 0
  end
  
  str << "and" if need_and
  
  if (value > 10)
    #puts 'value > 10'
    tens = value/10
    if tens == 1 
      str << teens[value%10-1]
      value = 0
    else
      str << decades[tens-1]
      value = value % 10
    end
  end
  
  if (value > 0)
    str << digits[value-1]
  end
  
  #puts "=> #{str}"
  str
end

#(1..1000).each do |v|
#  x = format(v)
#  puts "#{x} => #{x.length}"
#end

sum = (1..1000).inject(0) { |s, v| s+= format(v).length }

puts "#{sum}"

