n, m = gets.split.map(&:to_i)
max_l = 1
min_r = n
m.times do
  l, r = gets.split.map(&:to_i)
  max_l = l if l > max_l
  min_r = r if r < min_r
end
if max_l <= min_r
  puts min_r - max_l + 1
else
  puts 0
end
