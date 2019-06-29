n = gets.to_i
array = gets.split.map(&:to_i)
count = 0
(n-2).times do |i|
  temp = [array[i], array[i+1], array[i+2]].sort
  count += 1 if temp[1] == array[i+1]
end
puts count
