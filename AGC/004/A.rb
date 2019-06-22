a, b, c = gets.split.map(&:to_i).sort
puts a * b * (c.even? ? 0 : 1)
