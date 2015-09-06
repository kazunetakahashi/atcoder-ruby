l = gets.chomp.split(" ").map{|i| i.to_i}.sort
if l[0] == l[1]
  puts l[2]
else
  puts l[0]
end

