s = gets.chomp
s.length.times do |i|
  temp = s + s[0, i].reverse
  if temp == temp.reverse
    puts i
    break
  end
end
