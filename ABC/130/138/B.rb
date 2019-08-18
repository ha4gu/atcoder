N = gets.to_i
as = gets.split.map(&:to_i)
temp = 0
as.map { |a| temp += 1/a.to_f }
puts 1 / temp
