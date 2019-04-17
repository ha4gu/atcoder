chars = %w(A B C D E F)
str = gets.chomp
chars.map! { |char| str.count(char) }
puts chars.join(" ")
