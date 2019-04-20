n = gets.to_i
puts (n.to_s.include?("3") || n%3==0) ? "YES" : "NO"
