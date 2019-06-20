str = gets.chomp.split("")
num = gets.to_i
puts str.map.with_index { |c, i| i % num == 0 ? c : nil }.compact.join("")
