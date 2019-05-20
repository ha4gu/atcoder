sum = 0
3.times do
  sum += gets.split.map(&:to_i).inject(:*)/10
end
puts sum
