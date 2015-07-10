def nissu(y, m, d)
  if m <= 2
    m += 12
    y -= 1
  end
  return 365 * y + y/4 - y/100 + y/400 + 306*(m+1)/10 + d - 429
end

y = gets.to_i
m = gets.to_i
d = gets.to_i

puts nissu(2014, 5, 17) - nissu(y, m, d)
