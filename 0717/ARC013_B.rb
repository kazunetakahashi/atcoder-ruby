c = gets.to_i
ans = Array.new(3, 0)
c.times{
  x = gets.chomp.split(" ").map{|i| i.to_i}.sort!
  x.size.times{|i|
    ans[i] = [ans[i], x[i]].max
  }
}
printf("%d\n", ans.inject(:*))

