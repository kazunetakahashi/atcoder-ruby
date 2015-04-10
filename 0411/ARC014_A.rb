N = gets.to_i
S = gets.chomp

a = 0;

S.size.times do |i|
  case S[i]
  when 'A'
    a += 4
  when 'B'
    a += 3
  when 'C'
    a += 2
  when 'D'
    a += 1
  else
  end
end

puts printf("%.10f", a.to_f/N);
    
