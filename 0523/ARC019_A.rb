ary = [ [/O/, "0"],
        [/D/, "0"],
        [/I/, "1"],
        [/Z/, "2"],
        [/S/, "5"],
        [/B/, "8"] ]

s = gets.chomp
ary.each{ |it|
  s.gsub!(it[0], it[1])
}
puts s
