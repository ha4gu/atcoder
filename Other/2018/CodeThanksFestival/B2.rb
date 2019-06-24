x, y = gets.split.map(&:to_i)
flag = false
if (x + y) % 4 == 0
  a_plus_b = (x + y) / 4
  if (y - a_plus_b).even? && (y - a_plus_b) / 2 >= 0 && (x - a_plus_b).even? && (x - a_plus_b) / 2 >= 0
    flag = true
  end
end
puts flag ? "Yes" : "No"
