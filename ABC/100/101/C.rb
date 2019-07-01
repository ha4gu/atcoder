_n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
puts ((as.length - 1) / (k - 1).to_f).ceil
