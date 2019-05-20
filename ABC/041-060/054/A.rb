a, b = gets.split.map { |x| x=='1' ? 14 : x.to_i }
if a > b
  puts 'Alice'
elsif a < b
  puts 'Bob'
else
  puts 'Draw'
end