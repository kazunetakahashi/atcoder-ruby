n = gets.to_i
k = gets.to_i
if n%2 == 1
  n -= 1
end
puts ( (n/2 >= k) ? "YES" : "NO" )
