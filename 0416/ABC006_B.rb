trb = [0, 0, 1]
M = 10007
for i in 3..1000010
  trb[i] = (trb[i-1] + trb[i-2] + trb[i-3])%M
end
puts trb[gets.to_i-1]
