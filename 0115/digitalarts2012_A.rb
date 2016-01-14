def suit(x, y)
  if x.size != y.size
    return false
  end
  for i in 0..x.size-1
    if y[i] == '*'
      next
    elsif x[i] != y[i]
      return false
    end    
  end
  return true
end

s = gets.chomp.split(" ")
n = gets.to_i
t = []
n.times{
  t << gets.chomp
}

s.size.times{|i|
  t.size.times{|j|
    if suit(s[i], t[j])
      s[i] = "*" * s[i].size
    end
  }
}

s.size.times{|i|
  printf("%s", s[i])
  if i != s.size-1
    printf(" ")
  else
    printf("\n")
  end
}
