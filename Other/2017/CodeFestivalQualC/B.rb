n = gets.to_i
as = gets.split.map(&:to_i)
puts 3 ** n - as.map { |a| a.odd? ? 1 : 2 }.inject(:*)
