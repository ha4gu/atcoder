n = gets.to_i
prices = n.times.map { gets.chomp }
puts prices.map { |price| price.sub(/\A.*[1-9](0*)\Z/) { $1 }.length }.min
