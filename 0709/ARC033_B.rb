n = gets.chomp.split(" ").map{|i| i.to_i}
a = []
a << gets.chomp.split(" ").map{|i| i.to_i}
a << gets.chomp.split(" ").map{|i| i.to_i}

s = {}
bunbo = 0
bunshi = 0

2.times{|i|
  n[i].times{|j|
    if s.has_key?(a[i][j])
      bunshi += 1
    else
      s[a[i][j]] = 0
      bunbo += 1
    end
  }
}

printf("%.9f\n", bunshi.to_f/bunbo)
