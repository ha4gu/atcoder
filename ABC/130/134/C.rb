N = gets.to_i
As = readlines.map(&:to_i)
max, next_max = As.max(2)
max_index = As.index(max)
As.each_with_index do |a, i|
  if i == max_index
    puts next_max
  else
    puts max
  end
end
