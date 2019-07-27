_N, KING = gets.split.map(&:to_i)
candidates = gets.split.map(&:to_i)
current_max = 0
candidates.each do |chin|
  if chin < KING && current_max < chin
    current_max = chin
  end
end
if current_max == 0
  puts -1
else
  puts candidates.index(current_max) + 1
end
