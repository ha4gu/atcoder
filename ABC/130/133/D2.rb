n = gets.to_i
as = gets.split.map(&:to_i)
rains = [as.map.with_index { |a, i| i.even? ? a : -a }.inject(:+)]
(n-1).times do |i|
  rains << 2 * as[i] - rains[i]
end
puts rains.join(" ")
