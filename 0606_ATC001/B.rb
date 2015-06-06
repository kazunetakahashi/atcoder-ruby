n, q = gets.chomp.split(" ").map{|i| i.to_i}
$par = Array(0..(n-1))

def root(x)
  if $par[x] == x
    return x
  else
    return $par[x] = root($par[x])
  end
end

def same?(x, y)
  return root(x) == root(y)
end

def unite(x, y)
  x = root(x)
  y = root(y)
  if (x == y)
    return
  else
    $par[x] = y
  end
end

q.times{
  p, a, b = gets.chomp.split(" ").map{|i| i.to_i}
  if (p == 0)
    unite(a, b)
  else
    puts (same?(a, b) ? "Yes" : "No")
  end
}
