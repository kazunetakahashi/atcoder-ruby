n = gets.to_i
t = [1, 0, 0]
n.times{
  nt = []
  nt[1] = t[0]
  nt[2] = t[1] + t[2]
  nt[0] = nt[2]
  t = nt
  # p t
}
puts t.inject(:+)
