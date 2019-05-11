n = gets.to_i
a, b, c = readlines.map(&:chomp)
count = 0
n.times do |i|
  count += [a[i], b[i], c[i]].uniq.count - 1
end
puts count
