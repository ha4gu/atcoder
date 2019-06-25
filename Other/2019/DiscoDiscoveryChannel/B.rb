n = gets.to_i
if n.even?
  puts (0..(n / 2 - 1)).inject(:+) * 4
else
  puts (n - 2).step(1, -2).inject(:+) * 2 - (n - 2)
end
