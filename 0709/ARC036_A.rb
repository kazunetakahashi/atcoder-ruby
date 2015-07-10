n, k = gets.chomp.split(" ").map{|i| i.to_i}
t = []
n.times{
  t << gets.to_i
}
(n-2).times{|i|
  sum = 0
  3.times{|j|
    sum += t[i+j]
  }
  if sum < k
    puts i+3
    exit
  end
}
puts -1
