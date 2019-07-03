_n = gets.to_i
as = gets.split.map(&:to_i)
sum = 0
calc = as.map { |num|
  sum += num
}

# calc[0]、つまりevenを正とする場合
change = 0
moved = 0
calc.map.with_index { |num, i|
  if i.even?
    if num + change > 0
      # 問題なし
    else
      diff = 1 - (num+change)
      change += diff
      moved += diff.abs
    end
  else # i.odd?
    if num + change < 0
      # 問題なし
    else
      diff = -1 - (num+change)
      change += diff
      moved += diff.abs
    end
  end
}
even_moved = moved

# calc[1]、つまりoddを正とする場合
change = 0
moved = 0
calc.map.with_index { |num, i|
  if i.odd?
    if num + change > 0
      # 問題なし
    else
      diff = 1 - (num+change)
      change += diff
      moved += diff.abs
    end
  else # i.even?
    if num + change < 0
      # 問題なし
    else
      diff = -1 - (num+change)
      change += diff
      moved += diff.abs
    end
  end
}
odd_moved = moved

puts [even_moved, odd_moved].min
