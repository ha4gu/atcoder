_n = gets.to_i
times = gets.split.map(&:to_i)
m = gets.to_i
m.times do
  p, x = gets.split.map(&:to_i)
  temp = times.dup
  temp[p-1] = x
  puts temp.inject(:+)
end
