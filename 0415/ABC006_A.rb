N = gets.to_i
S = N.to_s

if N%3 != 0 && !(S.index("3"))
  puts "NO"
else
  puts "YES"
end
