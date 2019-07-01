s = gets.chomp
puts s[s.index('A')..-(s.reverse.index('Z')+1)].size
