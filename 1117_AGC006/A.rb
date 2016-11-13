n = gets.to_i
s = gets.chomp
t = gets.chomp

str = Array.new(n+1)

for i in 0..n
  str[i] = s + t.slice(-i, i)
end

for i in 0..n
  if str[i].slice(-n, n) == t
    puts str[i].size()
    exit
  end
end

