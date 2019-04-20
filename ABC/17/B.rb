s = gets.chomp.gsub(/ch/, "").gsub(/o/, "").gsub(/k/, "").gsub(/u/, "")
puts s.empty? ? "YES" : "NO"
