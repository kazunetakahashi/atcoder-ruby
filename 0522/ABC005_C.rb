t = gets.to_i
n = gets.to_i
a = gets.chomp.split(" ").map{|i| i.to_i}
m = gets.to_i
b = gets.chomp.split(" ").map{|i| i.to_i}

ind = 0
ind_k = 0
ok = false

while ind_k < m
  ok = false
  kyaku = b[ind_k]
  while ind < n
    time = kyaku - a[ind]
    if time < 0
      puts "no"
      exit
    elsif time <= t
      ind = ind + 1
      ind_k = ind_k + 1
      ok = true
      break
    else
      ind = ind + 1
    end
  end
  if ok
    next
  else
    puts "no"
    exit
  end
end

puts (ind_k == m ? "yes" : "no")
 

