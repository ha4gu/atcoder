a, b = gets.split.map(&:to_i)
puts a.even? || b.even? ? "Even" : "Odd"
