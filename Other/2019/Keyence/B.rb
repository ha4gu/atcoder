str = [nil] + gets.chomp.split("") + [nil]
flag = false
("keyence".length + 1).times do |i|
  if (str[0..("keyence".length - i)] + str[-i-1..-1]).join == "keyence"
    flag = true
    break
  end
end
puts flag ? "YES" : "NO"
