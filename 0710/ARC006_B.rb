n, l = gets.chomp.split(" ").map{|i| i.to_i}
amida = Array.new(l){[]}
l.times{|j|
  t = gets.chomp
  line = []
  (n-1).times{|i|
    amida[j] << (t[2*i+1] == '-')
  }
}
#p amida
pos = gets.chomp.index("o")/2
amida.reverse!
amida.each{|ary|
  if (pos-1 >= 0 && ary[pos-1])
    pos -= 1
  elsif (pos < n-1 && ary[pos])
    pos += 1
  end
  #p pos
}
puts pos+1
