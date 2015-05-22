def conbi(n, k)
  if k == 0
    1
  else
    conbi(n, k-1) * (n-k+1) / k
  end
end

s = gets.chomp.gsub(/25/, "X")

ans = 0
i, j = 0, 0

while i < s.size && j < s.size
  if i == j
    if s[i] != "X"
      i = i+1
      j = j+1
    else
      j = j+1
    end
  else
    if s[j] != "X"
      ans = ans + conbi(j-i+1, 2)
      j = j+1
      i = j
    else
      j = j+1
    end
  end
end

if i < j
  ans = ans + conbi(j-i+1, 2)
end

puts ans
