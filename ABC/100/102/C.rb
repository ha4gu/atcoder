n = gets.to_i
as = gets.split.map(&:to_i)
bs = as.map.with_index { |a, i| a - (i + 1) }

b = bs.sort[n / 2]
ans = as.map.with_index { |a, i| (a - (b + i + 1)).abs }.inject(:+)
puts ans
