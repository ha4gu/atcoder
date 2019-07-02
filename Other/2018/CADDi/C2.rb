N, P = gets.split.map(&:to_i)
LIMIT = (P ** (1 / N.to_f)).ceil
ans = 0
LIMIT.step(1, -1) do |num|
  if P % (num ** N) == 0
    ans = num
    break
  end
end
puts ans

# x = 1
# ans = 0
# until x ** N > P
#   ans = x if P % (x ** N) == 0
#   x += 1
# end
# puts ans
