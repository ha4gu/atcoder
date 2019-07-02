N, P = gets.split.map(&:to_i)
x = 1
ans = 0
until x ** N > P
  ans = x if P % (x ** N) == 0
  x += 1
end
puts ans
