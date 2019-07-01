n = gets.to_i
values = gets.split.map(&:to_i)
costs = gets.split.map(&:to_i)
sum = 0
n.times do |i|
  margin = values[i] - costs[i]
  sum += margin if margin > 0
end
puts sum
