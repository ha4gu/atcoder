a, b = gets.split.map(&:to_i).sort
if 0 < a
  puts "Positive"
elsif a == 0 || b == 0
  puts "Zero"
elsif a < 0 && 0 < b
  puts "Zero"
else # a <= b < 0
  puts (b - a).odd? ? "Positive" : "Negative"
end
