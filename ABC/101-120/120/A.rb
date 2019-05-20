a, b, c = gets.split.map(&:to_i)
max = b / a
puts max >= c ? c : max
