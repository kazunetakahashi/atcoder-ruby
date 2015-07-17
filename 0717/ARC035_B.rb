m = 1000000007

cnt = {}

fact = Array.new(10010)
fact[1] = 1
for i in 2..10009
  fact[i] = (i * fact[i-1]) % m
end

n = gets.to_i
t = []
n.times{
  x = gets.to_i
  t << x
  if cnt.has_key?(x)
    cnt[x] += 1
  else
    cnt[x] = 1
  end
}
t.sort!

pena = 0
ans = 0
t.each{|i|
  pena += i
  ans += pena
}
puts ans

res = 1
cnt.each{|key, c|
  res *= fact[c]
  res = res%m
}
puts res
