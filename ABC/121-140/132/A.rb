s = gets.chomp.split("")
flag = true
flag = false if s.uniq.count != 2
s.uniq.each do |char|
  flag = false if s.count(char) != 2
end
puts flag ? "Yes" : "No"
