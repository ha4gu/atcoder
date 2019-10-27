A, B = gets.split.map(&:to_i)
not_hidden = A - B * 2
puts not_hidden > 0 ? not_hidden : 0
