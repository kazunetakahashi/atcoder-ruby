require 'prime'
n = gets.to_i
sum = 1
Prime.prime_division(n).each{|q, a|
  sum *= (q ** (a+1) - 1) / (q - 1)
}
if sum > 2 * n
  puts "Abundant"
elsif sum < 2 * n
  puts "Deficient"
else
  puts "Perfect"
end
