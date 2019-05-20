s = gets.chomp
(2..s.size).each do |i|
  str = s[0..-i]
  if str.size.even?
    half = str.size/2
    if str[0...half] == str[half..-1]
      puts str.size
      break
    end
  end
end
