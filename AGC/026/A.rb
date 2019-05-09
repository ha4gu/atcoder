_n = gets.to_i
slimes = gets.split.map(&:to_i)
need_to_change = 0
previous = slimes.shift
slimes.each do |current|
  if previous == current
    need_to_change += 1
    current = slimes.max + 1
  end
  previous = current
end
puts need_to_change
