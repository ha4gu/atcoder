_n = gets.to_i
s = gets.chomp.split('')
puts s.count('R') > s.count('B') ? 'Yes' : 'No'
