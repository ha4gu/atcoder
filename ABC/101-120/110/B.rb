_N, _M, X, Y = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)
ys = gets.split.map(&:to_i)
z = xs.max + 1
z = X + 1 if z <= X
if (X < z && z <= Y) && (xs.max < z) && (z <= ys.min)
  puts 'No War'
else
  puts "War"
end