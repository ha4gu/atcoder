_n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort
puts as[0, k].inject(:+) + (k == 1 ? 0 : (1..(k-1)).inject(:+))
