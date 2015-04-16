ary = [0, 0, 1, 0, 1, 2, 3, 0, 1, 0]
n = gets.to_i
sum = 0
a = gets.chomp.split(" ").map{|i| i.to_i}
n.times { |i|
  sum += ary[a[i]]
}
puts sum
