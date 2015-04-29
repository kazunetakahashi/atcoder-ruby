N = gets.to_i
str = gets.chomp
str = " " + str
x = [ 'A', 'B', 'X', 'Y' ]
ans = N
for i in 0..3
  for j in 0..3
    for k in 0..3
      for w in 0..3
        l = x[i] + x[j]
        r = x[k] + x[w]
        ary = (N+1).times.map{|i| i.to_i}
        for s in 1..N
          if s > 1 && (str[s-1, 2] == l || str[s-1, 2] == r)
            ary[s] = [ ary[s], ary[s-2]+1 ].min
          end
          ary[s] = [ ary[s], ary[s-1]+1 ].min
        end
        ans = [ ans, ary[N] ].min
        if l=="AA" && r=="BB"
          # p ary
        end
      end
    end
  end
end
puts ans
