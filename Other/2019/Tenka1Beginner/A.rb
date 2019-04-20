a, b, c = gets.split.map(&:to_i)
a, b = [a, b].sort
puts c.between?(a, b) ? "Yes" : "No"
