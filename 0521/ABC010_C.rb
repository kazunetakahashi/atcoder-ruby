txa, tya, txb, tyb, t, v = gets.chomp.split(" ").map{|i| i.to_f}
n = gets.to_i
uwaki = false

def kyori(xa, ya, xb, yb)
  ((xa - xb)**2 + (ya - yb)**2)**(1/2.0)
end

idou = t * v
eps = 0.000001

n.times{
  x, y = gets.chomp.split(" ").map{|i| i.to_f}
  if (!uwaki) && (idou > kyori(x, y, txa, tya) + kyori(x, y, txb, tyb) - eps)
    uwaki = true
  end
}

puts (uwaki ? "YES" : "NO")
