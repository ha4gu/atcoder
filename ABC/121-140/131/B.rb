n, l = gets.split.map(&:to_i)
apples = Array.new(n) { nil }
apples = apples.map.with_index { |a, i| l + i }
min_abs = apples[0]
apples.each do |a|
  min_abs = a if min_abs.abs > a.abs
end
puts apples.inject(:+) - min_abs
