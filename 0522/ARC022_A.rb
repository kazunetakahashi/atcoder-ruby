s = gets.chomp.downcase

ary = ["i", "c", "t"]

ary.each{ |ch|
  x = s.index(ch)
  if x.nil?
    puts "NO"
    exit
  end
  s = s[(x+1)..(s.size()-1)]
  # p s
}
puts "YES"
