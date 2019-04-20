_n = gets.to_i
softs = gets.split.map { |s| s == "0" ? nil : s.to_i }.compact
puts (softs.inject(:+) / softs.size.to_f).ceil
