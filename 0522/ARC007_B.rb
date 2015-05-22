n, m = gets.chomp.split(" ").map{|i| i.to_i}

p = 0
d = n.times.map{|i| i+1}

m.times{
  disk = gets.to_i
  d.map!{|i|
    if i != disk
      i
    else
      p, i = i, p
      i
    end
  }
}

d.each{|i|
  puts i
}
