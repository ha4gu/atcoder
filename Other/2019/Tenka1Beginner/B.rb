_n = gets.to_i
s = gets.chomp.split("")
k = gets.to_i
char = s[k-1]
puts s.map { |x| x == char ? char : "*" }.join("")
