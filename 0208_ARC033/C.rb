s = gets.chomp.split("+")
x = 0
s.each{|y|
  if y.include?("0")
    x += 1
  end
}
puts s.size - x
