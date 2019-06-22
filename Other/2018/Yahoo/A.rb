s = gets.chomp.split("")
puts (s[0..2].join("") == "yah" && s[3] == s[4]) ? "YES" : "NO"
