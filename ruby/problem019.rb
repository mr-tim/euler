day = 365
count = 0
month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
(1901..2000).each do |year|
  leap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))
  month_days.each do |month|
    count += 1 if (day % 7) == 6
    day += month
    day += 1 if leap and month == 28
  end
end

puts count