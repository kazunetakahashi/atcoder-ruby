n, t = gets.chomp.split(" ").map{|i| i.to_i}
a = []
n.times{ |i|
  a[i] = gets.to_i
}

ans = 0
start = a[0]
close = a[0]+t
n.times{ |i|
  if close <= a[i]
    ans += close - start
    start = a[i]
    close = a[i]+t
  else
    close = a[i]+t
  end
}
ans += close - start

puts ans
