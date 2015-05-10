n = gets.to_i
s = gets.chomp
v = Array.new()
v.push("b")
100.times {
  str = v.last
  v.push("a" + str + "c")
  str = v.last
  v.push("c" + str + "a")
  str = v.last
  v.push("b" + str + "b")
}
ans = v.index(s)
if ans.nil?
  puts -1
else
  puts ans
end
