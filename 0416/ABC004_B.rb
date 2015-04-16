# coding: utf-8
table = []

for i in 0..3
  table[i] = gets.chomp.split(" ")
end

for i in 0..3
  for j in 0..3
    print table[3-i][3-j]
    if j != 3
      print " "
    else
      print "\n"
    end
  end
end
