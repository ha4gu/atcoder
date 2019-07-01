_n = gets.to_i
flowers = readlines.map(&:to_i)
count = 0
flowers.each.with_index do |flower, i|
  if i == 0
    next
  end
  count += 1 if flowers[0..(i-1)].include?(flower)
end
puts count
