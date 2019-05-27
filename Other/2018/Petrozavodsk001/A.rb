x, y = gets.split.map(&:to_i)
if x % y == 0
  puts -1
else
  z = 2
  limit = 10 ** 18
  ans = -1
  while x * z <= limit
    if x * z % y != 0
      ans = x * z
      break
    end
    z += 1
  end
  puts ans
end
