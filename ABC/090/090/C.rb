n, m = gets.split.map(&:to_i)
if  n == 1 && m == 1
  puts 1
elsif n <= 2 && m <= 2
  puts 0
elsif n == 1
  puts 1 * [m-2, 2].max
elsif m == 1
  puts [n-2, 2].max * 1
else
  puts (n-2) * (m-2)
end
