n, a, b = gets.split.map(&:to_i)
if a > b
  puts 0
elsif a == b
  puts 1
elsif n == 1
  puts 0
else
  min_sum = (n-1) * a + b
  max_sum = a + (n-1) * b
  puts max_sum - min_sum + 1
end
