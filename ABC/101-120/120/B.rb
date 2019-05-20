a, b, k = gets.split.map(&:to_i)
array = []
num = 1
until num > a || num > b
  array << num if (a % num == 0 && b % num == 0)
  num += 1
end
puts array[-k]
