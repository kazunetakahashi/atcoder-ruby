# coding: utf-8
# 全く数学的な考察をしない解法
n = gets.to_i
if n == 1
  puts "BOWWOW"
  exit
end
m = 0
n.times { |i|
  m = m+(i+1)
}
for i in 2..(m-1)
  if m%i == 0
    puts "BOWWOW"
    exit
  end
end
puts "WANWAN"
