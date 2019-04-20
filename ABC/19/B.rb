str = gets.chomp.split("")
str << nil
count = 1
puts str.map.with_index { |char, i|
  if i == 0
    char
  elsif char == str[i-1]
    count += 1
    nil
  else
    temp = "#{count}#{char}"
    count = 1
    temp
  end
}.join("")
