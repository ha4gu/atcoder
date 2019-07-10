num_s, num_c = gets.split.map(&:to_i)
count = [num_s, num_c / 2].min
num_c -= count * 2
count += num_c / 4
puts count
