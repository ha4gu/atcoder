a, b = readlines.map(&:to_i)
if a > b
  puts 'GREATER'
elsif a < b
  puts 'LESS'
else
  puts 'EQUAL'
end
