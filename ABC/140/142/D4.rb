require "prime"

a, b = gets.split.map(&:to_i)
small, large = [a, b].sort

def gcd_of_two(a, b)
  small, large = [a, b].sort
  if small == 0
    return large
  else
    gcd_of_two(small, large % small)
  end
end
gcd = gcd_of_two(small, large)

count = 1

1.step(gcd).each do |i|
  count += 1 if small % i == 0 && large % i == 0 && i.prime?
end

puts count
