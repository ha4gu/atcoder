a = 5.times.map { gets.to_i }
k = gets.to_i
puts a.max - a.min > k ? ':(' : 'Yay!'

# flag = true
# (0..3).each do |i|
#   flag = false if a[i+1] - a[i] > k
# end
# puts flag ?
