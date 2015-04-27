N, K = gets.chomp.split(" ").map{|i| i.to_i}
A = []
N.times { |i|
  A[i] = gets.to_i
}
cont = 0
last = 10000000
ans = 0
N.times { |i|
  if last < A[i]
    cont += 1
  else
    cont = 0
  end
  last = A[i]
  if cont >= K-1
    ans += 1
  end
  # puts "i = " + i.to_s + ", cont = " + cont.to_s
}
puts ans
