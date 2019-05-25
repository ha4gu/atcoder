def gcd_of_two(a, b)
  small, large = [a, b].sort
  if small == 0
    return large
  else
    gcd_of_two(small, large % small)
  end
end

n = gets.to_i
n.times do
  a, b = gets.split.map(&:to_i)
  puts gcd_of_two(a, b)
end
