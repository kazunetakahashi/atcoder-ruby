include Math

K = (1 << 24);

def power(j)
  if j == 0
    1
  elsif j%2 == 1
    (power(j-1) * $x)%$p
  else
    b = power(j/2)
    (b*b)%$p
  end
end

def bsgs(beta)
  gamma = beta
  $m.times{|i|
    if $h.has_key?(gamma)
      return i*$m + $h[gamma]
    end
    gamma = (gamma*$g)%$p
  }
  return -1
end

def answer()
  $x, $p, $a, $b = gets.chomp.split(" ").map{|i| i.to_i}
  if (($a%($p-1) == 0) || (($a - $a%($p-1)) + ($p-1) <= $b))
    puts 1
  elsif $b-$a > K
    $b = $b % ($p-1)
    $a = $a % ($p-1)
    $m = sqrt($p).ceil
    $h = {}
    $g = (($p == 2) ? 1 : power($p-1-$m));
    temp = 1
    $m.times{|j|
      $h[temp] = j
      temp = (temp * $x)%$p
    }
    for i in 0..10000000
      ans = bsgs(i)
      if ($a <= ans && ans <= $b)
        puts i
        return
      end
    end
  else
    ans = $p
    now = power($a)
    for i in 0..$b-$a
      ans = [ans, now].min
      if ans == 1
        break
      end
      now = (now * $x) % $p
    end
    puts ans
    return
  end
end

answer()
