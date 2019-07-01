_ = gets
index = 0
gets.split.map { |input|
  index += 1
  {index: index, height: input.to_i}
}.sort { |a, b|
  b[:height] <=> a[:height]
}.each do |e|
  puts e[:index]
end