dx = [0, 1, 0, -1]
dy = [1, 0, -1, 0]

h, w = gets.chomp.split(" ").map{|i| i.to_i}
ary = Array.new(h){Array.new(w)}

h.times{|i|
  ary[i] = gets.chomp.split("")
}

start = []
goal = []

h.times{|i|
  w.times{|j|
    if ary[i][j] == 's'
      start = [i, j]
    elsif ary[i][j] == 'g'
      goal = [i, j]
      ary[i][j] = '.'
    end
  }
}

s = []
s << start
while !(s.empty?)
  pt = s.pop
  if (pt[0] == goal[0] && pt[1] == goal[1])
    puts "Yes"
    exit
  elsif (ary[pt[0]][pt[1]] != 'v')
    ary[pt[0]][pt[1]] = 'v'
    4.times {|i|
      nx = pt[0] + dx[i]
      ny = pt[1] + dy[i]
      if (nx >= 0 && nx < h && ny >= 0 && ny < w && ary[nx][ny] == '.')
        s << [nx, ny]
      end
    }
  end
end
puts "No"
  
