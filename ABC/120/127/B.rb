r, d, x2000 = gets.split.map(&:to_i)
xs = [x2000]
10.times do |i|
  xs << r * xs[i] - d
end
xs.shift
puts xs
