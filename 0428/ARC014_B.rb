n = gets.to_i
words = {}
before = ''
ary = []
n.times { |i|
  ary[i] = gets.chomp
}
n.times { |i|
  turn = i%2
  w = ary[i]
  if i > 0 && w[0] != before
    puts ((turn == 0) ? "LOSE" : "WIN")
    exit
  end
  before = w[w.size-1]
  if words.key?(w)
    puts ((turn == 0) ? "LOSE" : "WIN")
    exit
  end
  words[w] = "ok"
}
puts "DRAW"
