n, x, y = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
takahashis = [x]
aokis = [y]
as.sort.reverse_each.with_index do |a, i|
  if i.even?
    takahashis << a
  else
    aokis << a
  end
end
t_sum = takahashis.inject(:+)
a_sum = aokis.inject(:+)
if t_sum > a_sum
  puts "Takahashi"
elsif t_sum < a_sum
  puts "Aoki"
else
  puts "Draw"
end
