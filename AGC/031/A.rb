n = gets
str = gets.chomp.split("")
count = 1
("a".."z").each do |alphabet|
  count *= (str.count(alphabet) + 1)
end
puts (count - 1) % (10**9 + 7)
