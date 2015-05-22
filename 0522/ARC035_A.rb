s = gets.chomp
t = s.reverse

s.size.times { |i|
  if !(s[i] == '*' || t[i] == '*' || s[i] == t[i])
    puts "NO"
    exit
  end
}
puts "YES"
