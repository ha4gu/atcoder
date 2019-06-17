S = gets.chomp.split("")
puts S.count("o") + (15 - S.length) >= 8 ? "YES" : "NO"
