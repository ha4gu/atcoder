_N = gets.to_i
array = gets.split.map(&:to_i)
puts (array.max - array.min).abs
