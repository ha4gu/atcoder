s = gets.chomp.split("")
flag = true
flag = false if s.include?("N") && !s.include?("S")
flag = false if s.include?("S") && !s.include?("N")
flag = false if s.include?("W") && !s.include?("E")
flag = false if s.include?("E") && !s.include?("W")
puts flag ? "Yes" : "No"
