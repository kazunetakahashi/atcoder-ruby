a, b = gets.chomp.split(" ").map{|i| i.to_i.abs}
if a > b
  puts "Bug"
elsif a < b
  puts "Ant"
else
  puts "Draw"
end
