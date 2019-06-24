n, m, a, b = gets.split.map(&:to_i)
mikans = Array.new(n) { b }
m.times do
  l, r = gets.split.map(&:to_i)
  (l-1..r-1).each do |i|
    mikans[i] = a
  end
end
puts mikans.inject(:+)
