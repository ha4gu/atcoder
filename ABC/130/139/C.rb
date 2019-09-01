N = gets.to_i
heights = gets.split.map(&:to_i)
longest = 0
current = 0
previous = heights.shift
heights.map.with_index { |num, i|
  if previous >= num
    current += 1
  else
    longest = [longest, current].max
    break if longest >= N - i
    current = 0
  end
  previous = num
}
longest = [longest, current].max
puts longest
