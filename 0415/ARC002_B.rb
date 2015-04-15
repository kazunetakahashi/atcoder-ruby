# coding: utf-8
require 'scanf'

# 先頭が大文字なのは定数。小文字から始めるのが無難か？
# インクリメントは使えない。
# グローバル変数は$をつける。
# gets.scanf() -> 配列が返る
# $y, $m, $d = gets.scanf("%d/%d/%d") のように代入

$y, $m, $d = 0

$days = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def leap?()
  if $y%400 == 0
    true
  elsif $y%100 == 0
    false
  elsif $y%4 == 0
    true
  else
    false
  end
end

def nextday()
  if $days[$m] > $d || (leap?() && $m == 2 && $d == 28)
    $d += 1
  else
    $d = 1
    if $m < 12
      $m += 1
    else
      $m = 1
      $y += 1
    end
  end
end

def ok?()
  if ($y%$m != 0)
    false
  else
    x = $y/$m
    if (x % $d != 0)
      false
    else
      true
    end
  end
end

# 以下main

$y, $m, $d = gets.scanf("%d/%d/%d")

while !ok?()
  nextday()
end

printf("%04d/%02d/%02d\n", $y, $m, $d)
