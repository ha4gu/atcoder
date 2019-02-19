n, a, b = gets.split.map(&:to_i)
sum = 0
(0..n).each do |i|
  temp = (i/10000 + i%10000/1000 + i%1000/100 + i%100/10 + i%10)
  if a <= temp && temp <= b
    sum += i
  end
end
puts sum
