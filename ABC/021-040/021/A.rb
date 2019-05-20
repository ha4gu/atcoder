n = gets.to_i
powers = []
base = 0
until 2**base > n
  powers << 2**base
  base += 1
end

def func(num, array)
  max = 0
  array.map { |x| (num >= x && x > max) ? max = x : nil }
  max
end

elements = []
until n == 0
  max = func(n, powers)
  elements << max
  n -= max
  powers.delete(max) unless max == 1
end

puts elements.size
elements.each do |e|
  puts e
end
