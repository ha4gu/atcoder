x, y = gets.split.map(&:to_i)
until x == 0 || y == 0
  if x >= y && x >= 3 && y >= 1
    x -= 3
    y -= 1
  elsif y >= x && x >= 1 && y >= 3
    x -= 1
    y -= 3
  else
    break
  end
end
puts (x == 0 && y == 0) ? "Yes" : "No"
