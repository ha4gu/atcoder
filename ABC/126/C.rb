n, k = gets.split.map(&:to_i)
probability = 0
(1..n).each do |dice|
  point = dice
  count = 0
  until point >= k
    count += 1
    point *= 2
  end
  probability += 0.5 ** count / n
end
puts probability
