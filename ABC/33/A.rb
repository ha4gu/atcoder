n = gets.chomp.split('').map(&:to_i)
puts n.count(n[0]) == n.size ? 'SAME' : 'DIFFERENT'
