N = gets.to_i
if N.even?
  puts "0.5"
else
  puts 1 - (N/2) / N.to_f
end
