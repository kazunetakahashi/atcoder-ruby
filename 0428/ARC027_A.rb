h, m = gets.chomp.split(" ").map{|i| i.to_i}
puts ( 18 * 60 - h * 60 - m )
