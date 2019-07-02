a, b, c, x, y = gets.split.map(&:to_i)
min_half = [x, y].min
max_half = [x, y].max
puts [
  a*x + b*y,
  a*([x-min_half, 0].max) + b*([y-min_half, 0].max) + c*2*min_half,
  a*([x-max_half, 0].max) + b*([y-max_half, 0].max) + c*2*max_half,
].min
