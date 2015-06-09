
dst = ['R', 'L', 'U', 'D', 'RU', 'RD', 'LU', 'LD']
dx = [0, 0, -1, 1, -1, 1, -1, 1]
dy = [1, -1, 0, 0, 1, 1, -1, -1]

def seikei(l)
  if l < 0
    l = -1 * l
  elsif l >= N
    l = 2 * N - 2 - l
  end
  l
end

y, x, w = gets.chomp.split(" ")
y = (y.to_i) -1
x = (x.to_i) -1
c = []
N = 9
N.times{
  c << gets.chomp.split("")
}
a = dst.index(w)
4.times{|i|
  nx = x + dx[a] * i
  ny = y + dy[a] * i
  nx = seikei(nx)
  ny = seikei(ny)
  print c[nx][ny]
}
puts ""
