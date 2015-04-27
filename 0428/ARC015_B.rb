n = gets.to_i
ary = Array.new(6){0}
n.times {
  x, y = gets.chomp.split(" ").map{|i| i.to_f}
  if x >= 35
    ary[0] += 1
  elsif x >= 30 && x < 35
    ary[1] += 1
  elsif x >= 25 && x < 30
    ary[2] += 1
  elsif x < 0
    ary[5] += 1
  end
  if y >= 25
    ary[3] += 1
  elsif y < 0 && x >= 0
    ary[4] += 1
  end
}
6.times { |i|
  print(ary[i])
  if (i < 5)
    print(" ")
  else
    print("\n")
  end
}
