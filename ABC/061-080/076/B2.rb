n, k = readlines.map(&:to_i)
point = 1
n.times do
  if point < k
    point *= 2
  else
    point += k
  end
end
puts point
