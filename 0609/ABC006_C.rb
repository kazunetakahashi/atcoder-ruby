n, m = gets.chomp.split(" ").map{|i| i.to_i}

for z in 0..n
  x = 3 * n - m + z
  y = m - 2 * n - 2 * z
  if x >= 0 && y >= 0
    puts "#{x} #{y} #{z}"
    exit
  end
end
puts "-1 -1 -1"
