_, _ = gets.chomp.split(" ").map{|i| i.to_i}
name = gets.chomp
kit = gets.chomp

n = {}
k = {}

name.each_char{ |c|
  if n[c]
    n[c] += 1
  else
    n[c] = 1
  end
}

kit.each_char{ |c|
  if k[c]
    k[c] += 1
  else
    k[c] = 1
  end
}

if !((n.keys - k.keys).empty?)
  puts -1
else
  ans = 0
  n.each{ |key, x|
    y = k[key]
    ans = [ans, (x+y-1)/y].max
  }
  puts ans
end
