def func(a, b)
  diff = (a - b).abs
  divisors = []
  diff.step(2, -1) do |i|
    if diff % i == 0
      return i if a % i == b % i
    end
  end
  return -1
end

n = gets.to_i
n.times do
  a, b = gets.split.map(&:to_i)
  p func(a, b)
end
