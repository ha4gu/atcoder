correct = "CODEFESTIVAL2016"
s = gets.chomp
count = 0
s.length.times do |i|
  count += 1 if s[i] != correct[i]
end
puts count
