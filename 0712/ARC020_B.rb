n, c = gets.chomp.split(" ").map{|i| i.to_i}
a = []
n.times{
  a << (gets.to_i)-1
}
ans = 1000
10.times{|i|
  10.times{|j|
    if i == j then next end
    cost = 0
    n.times{|k|
      if k%2 == 0 && a[k] != i
        cost += 1
      elsif k%2 == 1 && a[k] != j
        cost += 1
      end
    }
    ans = [ans, cost].min
  }
}
puts ans * c
