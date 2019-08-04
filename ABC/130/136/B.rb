N = gets.chomp
case N.length
when 1
  puts N.to_i
when 2
  puts 9
when 3
  puts N.to_i - 99 + 9
when 4
  puts 999 - 99 + 9
when 5
  puts N.to_i - 9999 + 909
when 6
  puts 99999 - 9999 + 909
end
