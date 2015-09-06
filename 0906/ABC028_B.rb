s = gets.chomp
6.times{|i|
  c = ("A".ord + i).chr
  printf("%d", s.count(c))
  printf(((i == 5) ? "\n" : " "))
}
