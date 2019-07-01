a, b = gets.split.map(&:to_i)
puts (b%a==0) ? b/a : b/a+1