n = gets.to_i
a = gets.chomp.split(" ").map{|i| i.to_i}
sum = a.inject(:+)
if sum%n != 0
  puts -1
  exit
end
h = sum/n
amari = 0
ans = 0
(n-1).times{|i|
  amari += a[i] - h
  if amari != 0
    ans += 1
  end
}
puts ans
