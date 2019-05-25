n = gets.to_i
count = 0
n.times do
  a, b = gets.split.map(&:to_i)
  count += [a/2, b].min
end
puts count
