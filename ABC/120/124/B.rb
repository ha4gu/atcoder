_n = gets.to_i
mountains = gets.split.map(&:to_i)
highest = mountains[0]
count = 0
mountains.each do |mountain|
  if mountain >= highest
    count += 1
    highest = mountain
  end
end
puts count