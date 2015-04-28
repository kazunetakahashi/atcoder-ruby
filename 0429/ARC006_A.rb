ary = Array.new(10){false}
e = gets.chomp.split(" ").map{|i| i.to_i}
b = gets.to_i
l = gets.chomp.split(" ").map{|i| i.to_i}
e.each {|i|
  ary[i] = true
}
same = 0
l.each {|i|
  if ary[i]
    same = same+1
  end
}
case same
when 6
  puts 1
when 5
  if l.include?(b)
    puts 2
  else
    puts 3
  end
when 2
  puts 0
else
  puts 8-same
end

