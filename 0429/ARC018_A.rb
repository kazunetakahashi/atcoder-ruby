h, b = gets.chomp.split(" ").map{|i| i.to_f}
h = h/100
printf("%0.3f\n", b * h * h)
