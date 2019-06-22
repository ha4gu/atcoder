a, b, c, k = gets.split.map(&:to_i)
if k.even?
  answer = a - b
else
  answer = b - a
end
puts answer.abs > 10 ** 18 ? "Unfair" : answer
