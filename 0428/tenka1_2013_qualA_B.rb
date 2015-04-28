n = gets.to_i
ans = 0
n.times {
  if gets.chomp.split(" ").map{|i| i.to_i}.inject(0){|sum, i| sum+i} < 20
    ans += 1
  end
}
puts ans
