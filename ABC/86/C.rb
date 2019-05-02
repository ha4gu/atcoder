n = gets.to_i
current_x = 0
current_y = 0
current_t = 0
flag = true

n.times do
  t, x, y = gets.split.map(&:to_i)
  distance = (current_x - x).abs + (current_y - y).abs
  if distance > (t - current_t)
    flag = false
    break
  elsif ((current_t - t) - distance).odd?
    flag = false
    break
  end
  current_t = t
  current_x = x
  current_y = y
end

puts flag ? "Yes" : "No"
