a = []
4.times{
  a << ( gets.chomp.split(" ").map{|i| i.to_i} << 0 )
}
a << [0, 0, 0, 0, 0]

dx = [0, 1]
dy = [1, 0]

2.times{|i|
  4.times{|j|
    4.times{|k|
      if a[j][k] == a[j+dx[i]][k+dy[i]]
        puts "CONTINUE"
        exit
      end
    }
  }
}

puts "GAMEOVER"
