n, s, t = gets.split.map(&:to_i)
w = gets.to_i
count = 0
count += 1 if w.between?(s, t)
diffs = readlines.map(&:to_i)
diffs.each do |diff|
  w += diff
  count += 1 if w.between?(s, t)
end
puts count
