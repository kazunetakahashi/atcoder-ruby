def pwr(x, m)
  if m == 0
    1.0
  elsif (m%2 == 1)
    pwr(x, m-1) * x
  else
    y = pwr(x, m/2)
    y * y
  end
end

n, va, vb, l = gets.chomp.split(" ").map{|i| i.to_f}
n = n.to_i
ans = l * pwr(vb/va, n)
printf("%.9f\n", ans)
