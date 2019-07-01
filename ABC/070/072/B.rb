s = gets.chomp.split('')
puts s.map.with_index { |c, i| i.even? ? c : nil }.compact.join('')
