paths = readlines.map { |x| x.chomp.split.map(&:to_i) }
ways = (1..4).map { |city|
  paths.select { |x| x.include?(city) }.count
}
puts (ways.include?(0) || ways.include?(3)) ? "NO" : "YES"
