n, m = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i)
min = cards.min
m.times do
  b, c = gets.split.map(&:to_i)
  if c > min
    b.times do
      cards << c
    end
    cards = cards.sort.reverse[0, n]
    min = cards.min
  end
end
puts cards.inject(:+)
