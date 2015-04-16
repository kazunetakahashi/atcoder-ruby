m, n = gets.chomp.split(" ").map{|i| i.to_i}
case m
when 0
  puts n+1
when 1
  puts n+2
when 2
  puts 2 * n + 3
when 3
  puts 2 ** (n + 3) - 3
else
  puts "error!"
end

