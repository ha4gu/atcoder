sum = gets.split.map(&:to_i).inject(:+)
puts sum >= 10 ? 'error' : sum
