n, k = gets.chomp.split(" ").map{|i| i.to_i}
t = []
n.times{
  t << gets.chomp.split(" ").map{|i| i.to_i}
}
s = [[0, 0]] # kaisu, int
while !(s.empty?)
  a = s.shift()
  if a[0] == n
    if a[1] == 0
      puts "Found"
      exit
    end
  else
    k.times{|i|
      s << [a[0] + 1, a[1] ^ t[a[0]][i]]
    }
  end
end
puts "Nothing"
