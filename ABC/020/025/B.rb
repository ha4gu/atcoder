# 東側を+、西側を-とする
n, a, b = gets.split.map(&:to_i)
position = 0
n.times do
  s, d = gets.split
  d = d.to_i
  d = a if d < a
  d = b if d > b
  position += d if s == "East"
  position -= d if s == "West"
end
if position > 0
  puts "East #{position}"
elsif position < 0
  puts "West #{position.abs}"
else # position == 0
  puts 0
end
