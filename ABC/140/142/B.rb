N, K = gets.split.map(&:to_i)
heights = gets.split.map(&:to_i)
count = 0
heights.map { |h| h >= K ? count += 1 : nil }
puts count
