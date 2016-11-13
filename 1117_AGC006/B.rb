n, x = gets.chomp.split(" ").map{|u| u.to_i}

if x == 1 || x == 2 * n - 1
  puts "No"
  exit
elsif n == 2
  puts "Yes"
  puts "1 2 3"
  exit
end

@ans = Array.new(2 * n - 1){-1}
@unused = (1..(2*n-1)).to_a

def use(ind, m)
  @ans[ind] = m
  @unused.delete(m)
end

use(n-1, x)
if x != 2 * n - 2
  use(n - 2, 1)
  use(n - 3, 2 * n - 2)
  use(n, 2 * n - 1)
else
  use(n - 2, 2 * n - 1)
  use(n - 3, 1)
  use(n, 2)
end

for i in 0...(2*n-1)
  if @ans[i] == -1
    @ans[i] = @unused.first
    @unused.shift
  end
end

puts "Yes"
puts @ans.join(" ")

