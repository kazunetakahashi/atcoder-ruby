gets
puts gets.chomp.split(" ").map{|i| [80-(i.to_i), 0].max}.inject(:+)
