dx = [0, 1, 0, -1]
dy = [1, 0, -1, 0]

r, c = gets.chomp.split(" ").map{|i| i.to_i}
sy, sx = gets.chomp.split(" ").map{|i| (i.to_i) -1}
gy, gx = gets.chomp.split(" ").map{|i| (i.to_i) -1}
c = []
r.times{
  c << gets.chomp.split("").map{|i| (i == '.' ? -1 : -2)}
}
s = [[[sy, sx], 0]]
while !(s.empty?)
  a = s.shift()
  if a[0][0] == gy && a[0][1] == gx
    puts a[1]
    exit
  elsif c[a[0][0]][a[0][1]] == -1
    c[a[0][0]][a[0][1]] = a[1]
    4.times{|i|
      nx = a[0][0] + dx[i]
      ny = a[0][1] + dy[i]
      if c[nx][ny] == -1
        s << [[nx, ny], a[1]+1]
      end
    }
  end
end
