n, k, x, y = readlines.map(&:to_i)
if n > k
  puts k*x + (n-k)*y
else
  puts n*x
end