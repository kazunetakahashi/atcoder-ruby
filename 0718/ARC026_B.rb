def pow(q, a)
  if a == 0
    1
  elsif a%2 == 0
    y = pow(q, a/2)
    y * y
  else
    pow(q, a-1) * q
  end
end

prime = Array.new(100010, true)
prime[0] = prime[1] = false
primes = []
for i in 2..100009
  if prime[i]
    primes << i
    for j in 2..100009
      if i * j >= 100010
        break
      end
      prime[i*j] = false
    end
  end
end

m = gets.to_i
n = m
map = {}

primes.each{|i|
  while n % i == 0
    n /= i
    if map.has_key?(i)
      map[i] += 1
    else
      map[i] = 1
    end
  end
}

if n != 1
  map[n] = 1
end

#p map

sum = 1
map.each{|q, a|
  sum *= (pow(q, a+1) - 1)/(q - 1)
}

#p sum

if sum > 2 * m
  puts "Abundant"
elsif sum < 2 * m
  puts "Deficient"
else
  puts "Perfect"
end

