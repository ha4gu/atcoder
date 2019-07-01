n, a, b = gets.split.map(&:to_i)
if a + 1 == b || (b - a).odd?
  puts "Borys"
else
  puts "Alice"
end
