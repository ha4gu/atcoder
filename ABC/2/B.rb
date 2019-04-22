word = gets.chomp.split("")
vowels = %w(a i u e o)
puts word.map { |char| vowels.include?(char) ? nil : char }.compact.join("")
