def func(str)
  str[1..-1] + str[0]
end

s = gets.chomp
k = gets.to_i
(k%s.length).times do
  s = func(s)
end
puts s
