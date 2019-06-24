count = gets.to_i
s = gets.chomp.split("")
flag = (count == 0) ? true : false
s.each do |move|
  break if flag
  if move == "+"
    count += 1
  else
    count -= 1
  end
  if count == 0
    flag = true
  end
end
puts flag ? "Yes" : "No"
