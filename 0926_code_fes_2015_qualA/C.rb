n, t = gets.chomp.split(" ").map{|i| i.to_i}
a = []
b = []
k = Array.new(n)
n.times{|i|
  temp = gets.chomp.split(" ").map{|i| i.to_i}
  a << temp[0]
  b << temp[1]
  k[i] = a[i] - b[i]
}
if b.inject(:+) > t
  puts -1
  exit
end
k.sort!.reverse!
sa = a.inject(:+) - t
n.times{|i|
  if sa <= 0
    puts i
    exit
  else
    sa -= k[i]
  end
}
puts n
