n = gets.to_i
s = gets.chomp.split("").map{|i| (i == 'X')}

dp = Array.new(n){10000}
dp[0] = 0

n.times{|i|
  for j in 1..3
    if i+j < n
      dp[i+j] = [dp[i+j], dp[i] + (s[i+j] ? 1 : 0)].min
    end
  end
}

puts dp[n-1]
