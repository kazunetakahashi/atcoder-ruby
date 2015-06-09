N = 8
$dx = [0, 0, 1, -1, 1, 1, -1, -1]
$dy = [1, -1, 0, 0, 1, -1, 1, -1]

class Board
  
  attr_accessor :q, :b, :num
  
  def initialize()
    @num = 0
    @q = Array.new(N){-1}
    @b = Array.new(N){Array.new(N){true}}
  end

  def add(x, y)
    if !(@b[x][y])
      return false
    end
    @num += 1
    @q[x] = y
    @b[x][y] = false
    8.times{|i|
      j = 1
      while true
        nx = x + j * $dx[i]
        ny = y + j * $dy[i]
        if 0 <= nx && nx < N && 0 <= ny && ny < N
          @b[nx][ny] = false
          j += 1
        else
          break
        end
      end
    }
    return true
  end

  def set()
    ary = []
    N.times{|i|
      ary[i] = gets.chomp.split("")
    }
    N.times{|i|
      N.times{|j|
        if ary[i][j] == 'Q' && !(self.add(i, j))
          return false
        end
      }
    }
    return true
  end

  def show()
    N.times{|i|
      str = ""
      N.times{|j|
        if @q[i] != j
          str += "."
        else
          str += "Q"
        end
      }
      puts str
    }
  end
  
end

start = Board.new()
if !(start.set())
  puts "No Answer"
  exit
end
s = [start]

while !(s.empty?)
  brd = s.pop()
  # puts "s.size = #{s.size()}"
  # brd.show()
  if brd.num == N
    brd.show()
    exit
  end
  N.times{|i|
    if brd.q[i] == -1
      N.times{|j|
        nbrd = Marshal.load(Marshal.dump(brd))
        if nbrd.add(i, j)
          s.push(nbrd)
        end
      }
    end
  }
end

puts "No Answer"
