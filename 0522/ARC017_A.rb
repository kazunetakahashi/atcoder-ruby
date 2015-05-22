# coding: utf-8
Primesize = 1000003 # atcoderでは2000000にすると2secでTLEした
isprime = Array.new(Primesize, true)
isprime[0] = isprime[1] = false
for i in 2..(Primesize-1)
  if isprime[i]
    for j in 2..(Primesize-1)
      if (t = i * j) >= Primesize
        break
      end
      isprime[t] = false
    end
  end
end

puts (isprime[gets.to_i] ? "YES" : "NO")
