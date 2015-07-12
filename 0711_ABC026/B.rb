n = gets.to_i
r = []
n.times{
  r << gets.to_i
}
r.sort!
r.reverse!
ans = 0

n.times{|i|
  if (i%2 == 0)
    ans += r[i] * r[i]
  else
    ans -= r[i] * r[i]
  end
}

printf("%.9f\n", ans.to_f * Math::PI)
