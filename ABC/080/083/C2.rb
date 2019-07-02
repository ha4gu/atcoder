x, y = gets.split.map(&:to_i)
count = 1
until x * 2 ** count > y
  count += 1
end
puts count
