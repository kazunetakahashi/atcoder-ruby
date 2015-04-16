mat = ["TAKAHASHIKUN", "Takahashikun", "takahashikun"]
n = gets.to_i
str = gets.chomp.delete!(".").split(" ")
ans = 0
str.map{ |itr|
  mat.map{ |itr2|
    if itr == itr2
      ans += 1
    end
  }
}
puts ans
