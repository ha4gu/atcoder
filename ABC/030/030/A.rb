a, b, c, d = gets.split.map(&:to_f)
if b/a > d/c
  puts "TAKAHASHI"
elsif b/a < d/c
  puts "AOKI"
else
  puts "DRAW"
end
