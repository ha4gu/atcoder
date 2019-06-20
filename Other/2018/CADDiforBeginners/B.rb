n, h, w = gets.split.map(&:to_i)
count = 0
n.times do
  a, b = gets.split.map(&:to_i)
  count += 1 if a >= h && b >= w
end
puts count
