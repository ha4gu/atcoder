n = gets.to_i
flowers = readlines.map(&:to_i)
puts n - flowers.uniq.size
