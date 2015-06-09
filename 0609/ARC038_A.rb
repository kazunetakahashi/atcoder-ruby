n = gets.to_i
ary = gets.chomp.split(" ").map{|i| i.to_i}
ary.sort!
ary.reverse!
sum = 0
n.times { |i|
  if i%2 == 0
    sum += ary[i]
  end
}
puts sum
