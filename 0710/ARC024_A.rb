gets
l = gets.chomp.split(" ").map{|i| i.to_i}.sort!
r = gets.chomp.split(" ").map{|i| i.to_i}.sort!
ans = 0
x, y = 0, 0

while (x < l.size) && (y < r.size)
  if l[x] < r[y]
    x += 1
  elsif l[x] > r[y]
    y += 1
  else
    ans += 1
    x += 1
    y += 1
  end
end

puts ans
