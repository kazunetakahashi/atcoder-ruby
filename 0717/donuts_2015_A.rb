include Math
r, d = gets.chomp.split(" ").map{|i| i.to_i}
puts r * r * PI * 2 * d * PI
