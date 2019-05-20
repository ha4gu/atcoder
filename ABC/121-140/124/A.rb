buttons = gets.split.map(&:to_i).sort.reverse
sum = buttons.shift
buttons << sum - 1
sum += buttons.sort.reverse.shift
puts sum
