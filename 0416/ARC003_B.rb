n = gets.to_i
dic = Array.new(n)
dic.map!{gets.chomp}
dic.map!{|it| [it.reverse, it]}
dic.sort!
n.times {|i|
  puts dic[i][1]
}
