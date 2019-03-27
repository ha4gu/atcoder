n = gets.to_i
k = gets.to_i
balls = gets.split.map(&:to_i)
total = 0
n.times do |i|
  total += 2* [balls[i].abs, (k - balls[i]).abs].min
end
puts total
