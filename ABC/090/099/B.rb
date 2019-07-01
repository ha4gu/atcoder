a, b = gets.split.map(&:to_i)
diff = b - a
puts (diff+1)*diff/2 - b
