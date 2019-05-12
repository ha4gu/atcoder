r, g, b, n = gets.split.map(&:to_i)
c3, c2, c1 = [r, g, b].sort # c1がrgbの中で一番大きい数字
count = 0
(0..n/c1).each do |nc1|
  rest1 = n - c1*nc1
  (0..rest1/c2).each do |nc2|
    count += 1 if (rest1 - c2*nc2) % c3 == 0
  end
end
puts count
