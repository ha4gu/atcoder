n = gets.to_i
power = 1
(1..n).each do |i|
  power = power * i % (10**9+7)
end
puts power
