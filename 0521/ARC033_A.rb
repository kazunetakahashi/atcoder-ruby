def conbi(n, k)
  if k == 0
    1
  else
    conbi(n, k-1) * (n-k+1) / k
  end
end

N = gets.to_i
puts conbi(N+1, 2)
