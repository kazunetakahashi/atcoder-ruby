# coding: utf-8
r, c, k = gets.chomp.split(" ").map{|i| i.to_i}
n = gets.to_i
point = []
n.times {
  x, y = gets.chomp.split(" ").map{|i| i.to_i}
  x = x-1
  y = y-1
  point.push([x, y])
}
row = Array.new(r, 0)
col = Array.new(c, 0)
n.times { |i|
  row[point[i][0]] += 1
  col[point[i][1]] += 1
}
crow = Array.new(n+1, 0)
ccol = Array.new(n+1, 0)
row.each { |cnt|
  crow[cnt] += 1
}
col.each { |cnt|
  ccol[cnt] += 1
}
tans = 0 # ぴったりn個
for i in 0..k
  tans += crow[i] * ccol[k-i]
end
n.times { |i|
  cnt = row[point[i][0]] + col[point[i][1]]
  if cnt == k
    tans -= 1
  elsif cnt == k+1
    tans += 1
  end
}
puts tans
