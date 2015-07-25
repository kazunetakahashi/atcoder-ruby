n, m = gets.chomp.split(" ").map{|i| i.to_i}
a = []
m.times{|i|
  a << gets.to_i-1
}
a.reverse!
visited = Array.new(n, false)

ans = []
m.times{|i|
  k = a[i]
  if visited[k]
    next
  else
    visited[k] = true
    ans << k
  end
}
n.times{|i|
  if !visited[i]
    ans << i
  end
}
n.times{|i|
  puts ans[i]+1
}
