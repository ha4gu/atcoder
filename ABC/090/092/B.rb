N = gets.to_i
D, X = gets.split.map(&:to_i)
sum = X
N.times do
  days = gets.to_i
  sum += (D - 1) / days + 1
end
puts sum
