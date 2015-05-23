n, d, k = gets.chomp.split(" ").map{|i| i.to_i}
day = []
d.times{
  day << gets.chomp.split(" ").map{|i| i.to_i}
}
zoku = []
k.times{
  zoku << gets.chomp.split(" ").map{|i| i.to_i}
}
# p day, zoku
zoku.each{ |z|
  s = z[0]
  t = z[1]
  now = s
  susumu = (s < t)
  # p [s, t, susumu]
  d.times { |i|
    l = day[i][0]
    r = day[i][1]
    if (l <= now && now <= r)
      if (l <= t && t <= r)
        puts i+1
        break
      end
      now = (susumu ? r : l)
      # p [i, now]
    end
  }
}

