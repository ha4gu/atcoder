as = gets.split.map(&:to_i)
puts as.count(as[0]) == 3 ? 'Yes' : 'No'
