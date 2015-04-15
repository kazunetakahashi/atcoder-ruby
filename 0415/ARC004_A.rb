n = gets.to_i

points = []

for i in 1..n
  str = gets.chomp.split(" ").map(&:to_i)
  points.push(str)
end

max_l = 0.0

for i in 0..n-1
  for j in 0..i-1
    x = points[i][0] - points[j][0]
    y = points[i][1] - points[j][1]
    l = (x * x + y * y) ** (1/2.0)
    if l > max_l
      max_l = l
    end
  end
end

printf("%.5f\n", max_l)

  
