a, b = gets.split.map(&:to_i)
puts gets.chomp.length.between?(a, b) ? "YES" : "NO"
