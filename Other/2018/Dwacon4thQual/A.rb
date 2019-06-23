s = gets.chomp.split("").map(&:to_i)
puts (s[0] == s[2] && s[1] == s[3]) ? "Yes" : "No"
