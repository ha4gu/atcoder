a, b = readlines.map(&:to_i)
puts ((a/b+1)*b - a)%b
