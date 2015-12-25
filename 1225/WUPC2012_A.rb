require "date"

ma, da = gets.chomp.split(" ").map{|i| i.to_i}
mb, db = gets.chomp.split(" ").map{|i| i.to_i}

x = Date.new(2012, ma, da)
y = Date.new(2012, mb, db)

puts (y - x).to_i
