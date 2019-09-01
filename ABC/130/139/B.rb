A, B = gets.split.map(&:to_i)
available = 1
count = 0
until available >= B
  count += 1
  available = available - 1 + A
end
puts count
