N = gets.to_i
values = gets.split.map(&:to_i).sort
current = values.shift
until values.empty?
  next_guzai = values.shift
  current = (current + next_guzai) / 2.to_f
end
puts current
