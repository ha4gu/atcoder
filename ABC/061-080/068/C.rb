n, m = gets.split.map(&:to_i)
from_1_to_any = []
from_any_to_n = []
m.times do
  a, b = gets.split.map(&:to_i)
  if a == 1 || b == 1
    from_1_to_any << ([a, b] - [1])[0]
  elsif a == n || b == n
    from_any_to_n << ([a, b] - [n])[0]
  end
end
# p from_1_to_any
# p from_any_to_n
# p from_1_to_any & from_any_to_n
# p (from_1_to_any & from_any_to_n).empty?
puts (from_1_to_any & from_any_to_n).empty? ? "IMPOSSIBLE" : "POSSIBLE"
