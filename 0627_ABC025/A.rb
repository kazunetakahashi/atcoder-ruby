s = gets.chomp;
n = gets.to_i

ary = []

5.times{|i|
  5.times{|j|
    ary << (s[i] + s[j]);
  }
}

ary.sort!

puts ary[n-1]
