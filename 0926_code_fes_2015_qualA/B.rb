n = gets.to_i
a = gets.chomp.split(" ").map{|i| i.to_i}
s = 0
a.each{|x|
  s = 2 * s + x
}
puts s
