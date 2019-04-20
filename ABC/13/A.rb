x = gets.chomp
("A".."E").each.with_index do |char, i|
  if char == x
    puts i+1
    break
  end
end
