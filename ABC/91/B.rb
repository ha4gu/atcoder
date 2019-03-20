N = gets.to_i
blues = N.times.map { gets.chomp }
M = gets.to_i
reds = M.times.map { gets.chomp }
points = []
blues.uniq.each do |word|
  points << blues.count(word) - reds.count(word)
end
puts points.max < 0 ? 0 : points.max
