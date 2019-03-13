s = gets.chomp
T = gets.chomp
flag = false
(s.length).times do
  if s == T
    flag = true
    break
  else
    s = s[-1] + s[0..-2]
  end
end
puts flag ? "Yes" : "No"
