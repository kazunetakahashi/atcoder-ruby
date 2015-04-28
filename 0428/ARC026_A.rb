n, a, b = gets.chomp.split(" ").map{|i| i.to_i}
if n < 5
  puts n * b
else
  puts (n-5) * a + 5 * b
end
