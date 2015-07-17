m = {}
m["b"] = "1"
m["c"] = "1"
m["d"] = "2"
m["w"] = "2"
m["t"] = "3"
m["j"] = "3"
m["f"] = "4"
m["q"] = "4"
m["l"] = "5"
m["v"] = "5"
m["s"] = "6"
m["x"] = "6"
m["p"] = "7"
m["m"] = "7"
m["h"] = "8"
m["k"] = "8"
m["n"] = "9"
m["g"] = "9"
m["z"] = "0"
m["r"] = "0"
m[" "] = " "

gets.to_i
s = gets.chomp.downcase.split("")
ans = ""
s.each{|c|
  if m.has_key?(c)
    ans += m[c]
  end
}
ans = ans.split(" ")
ans.size.times{|i|
  printf("%s", ans[i])
  if i != ans.size-1
    printf(" ")
  end
}
printf("\n")
