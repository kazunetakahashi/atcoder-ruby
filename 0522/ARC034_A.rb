n = gets.to_i

ans = 0

n.times{
  a, b, c, d, e = gets.chomp.split(" ").map{|i| i.to_f}
  tans = a+b+c+d+(e * 110/900)
  ans = [ans, tans].max
}

printf("%.9f\n", ans)
