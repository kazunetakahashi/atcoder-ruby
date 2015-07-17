sum = 0
gets.to_i.times{
  sum += gets.chomp.split(" ").map{|i| i.to_i}.inject(:*)
}
puts (sum*1.05).floor
