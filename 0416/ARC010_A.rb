n, m, a, b = gets.chomp.split(" ").map{|i| i.to_i}
c = []
m.times { |i|
  c[i] = gets.to_i
}
m.times { |i|
  if n <= a
    n += b
  end
  n -= c[i]
  if n < 0
    puts i+1
    exit
  end
}
puts "complete"
