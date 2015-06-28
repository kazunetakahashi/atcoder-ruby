n, a, b = gets.chomp.split(" ").map{|i| i.to_i}
s = []
d = []
ans = 0
n.times{
  ts, td = gets.chomp.split(" ")
  s << ts
  td = td.to_i
  if td < a
    td = a
  elsif td > b
    td = b
  end
  d << td
}
n.times{|i|
  if s[i] == "East"
    ans += d[i]
  else
    ans -= d[i]
  end
}
if ans > 0
  printf("East %d\n", ans)
elsif ans < 0
  printf("West %d\n", (-1) * ans)
else
  puts 0
end
