n = gets.to_i
count = 0
n.times do
  l, r = gets.split.map(&:to_i)
  count += r - l + 1
end
puts count
