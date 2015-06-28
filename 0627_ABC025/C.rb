$b = []
2.times{
  $b << gets.chomp.split(" ").map{|i| i.to_i}
}
$c = []
3.times{
  $c << gets.chomp.split(" ").map{|i| i.to_i}
}

$scores = {}

def fukasa(ary, dep)
  if $scores.has_key?(ary)
    return $scores[ary]
  end
  if (dep == 9)
    ans = 0
    2.times{|i|
      3.times{|j|
        ans += $b[i][j] * ary[i][j] * ary[i+1][j]
      }
    }
    3.times{|i|
      2.times{|j|
        ans += $c[i][j] * ary[i][j] * ary[i][j+1]
      }
    }
    $scores[ary] = ans
    return ans
  else
    set = []
    3.times{|i|
      3.times{|j|
        if ary[i][j] == 0
          temp = Marshal.load(Marshal.dump(ary))
          temp[i][j] = (dep%2 == 0) ? 1 : -1
          set << fukasa(temp, dep+1)
        end
      }
    }
    ans = 0
    if dep%2 == 0
      ans = set.max
    else
      ans = set.min
    end
    $scores[ary] = ans
    return ans
  end
end

table = Array.new(3){Array.new(3){0}}
sa = fukasa(table, 0)
wa = 0
2.times{|i|
  3.times{|j|
    wa += $b[i][j] + $c[j][i]
  }
}

puts (wa+sa)/2
puts (wa-sa)/2
