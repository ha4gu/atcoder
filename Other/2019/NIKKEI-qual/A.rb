n, a, b = gets.split.map(&:to_i)
max_num = [a, b].min
min_num = n >= a+b ? 0 : a+b - n
puts "#{max_num} #{min_num}"
