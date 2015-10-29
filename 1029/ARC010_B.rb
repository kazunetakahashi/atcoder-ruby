require 'date'

n = gets.to_i
holidays = []

n.times{
  holidays << Date.parse("2012/" + gets.chomp)
}

holidays.sort!

isholiday = {}

ganjitsu = Date.parse("2012/01/01")
omisoka = Date.parse("2012/12/31")

ganjitsu.upto(omisoka){|x|
  isholiday[x] = (x.wday == 0 || x.wday == 6)
}

holidays.each{|x|
  while x < omisoka && isholiday[x]
    x += 1
  end
  isholiday[x] = true
}

renzoku = 0
renzoku_m = 0

isholiday.each{|s,t|
  if t
    renzoku += 1
    renzoku_m = [renzoku, renzoku_m].max
  else
    renzoku = 0
  end
}

puts renzoku_m
