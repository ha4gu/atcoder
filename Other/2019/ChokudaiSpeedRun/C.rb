n = gets.to_i
max = 0
n.times do
  a, b = gets.split.map(&:to_i)
  max = a + b if a + b > max
end
puts max
