n = gets.to_i
as = gets.split.map(&:to_i)
costs = []
(as.min..as.max).each do |num|
  cost = as.map { |a| (a-num).abs ** 2 }.inject(:+)
  costs << cost
  break if cost == 0
end
puts costs.min
