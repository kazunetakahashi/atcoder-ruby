ary = gets.chomp.split(" ")
n = ary.size
n.times{|i|
  print(ary[i])
  if i != n-1
    print(",")
  else
    puts ""
  end
}
