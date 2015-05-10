n = gets.to_i
b = []
n.times {
  h, s = gets.chomp.split(" ").map{|i| i.to_i}
  b.push([h, s])
}
ub = 100000000000000000
lb = 0
while ub-lb > 1
  t = (ub+lb)/2
  ary = b.map{|pa| (t-pa[0])/pa[1]}.sort!
  ok = true
  n.times {|i|
    if ary[i] < i
      ok = false
      break
    end
  }
  if ok
    ub = t
  else
    lb = t
  end
end
puts ub
