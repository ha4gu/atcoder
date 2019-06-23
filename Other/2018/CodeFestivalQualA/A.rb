a, b, c, s = readlines.map(&:to_i)
puts (a + b + c).between?(s-3, s) ? "Yes" : "No"
