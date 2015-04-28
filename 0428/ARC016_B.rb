n = gets.to_i
ary = Array.new(9){[]}
n.times { |i|
  str = gets.chomp
  for j in 0..8
    ary[j][i] = str[j]
  end
}
ans = 0
for j in 0..8
  str = ary[j].join("")
  while !((str.sub!("oo", "o")).nil?)
  end
  ans = ans + str.count("x")
  ans = ans + str.count("o")
end
puts ans

