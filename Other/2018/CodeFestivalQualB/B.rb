n, x = gets.split.map(&:to_i)
as = []
bs = []
n.times do
  a, b = gets.split.map(&:to_i)
  as << a
  bs << b
end
index = bs.index(bs.max)
as[index] = as[index] + x
point = 0
n.times do |i|
  point += as[i] * bs[i]
end
puts point
