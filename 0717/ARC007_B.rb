b = gets.chomp.split(" ").map{|i| i.to_i}
c = Array.new(10);
10.times{|i|
  c[b[i]] = i
}
n = gets.to_i
num = []
dic = {}
n.times{
  a = gets.to_i
  x = a.to_s.split("").map{|i| c[i.to_i]}.join("").to_i
  num << x
  dic[x] = a
}
num.sort!
num.each{|i|
  puts dic[i]
}
