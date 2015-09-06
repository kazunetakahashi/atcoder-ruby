n, k = gets.chomp.split(" ").map{|i| i.to_i}
printf("%.20f\n", ((k-1)*(n-k)*6 + (n-1) * 3 + 1).to_f / n ** 3)
