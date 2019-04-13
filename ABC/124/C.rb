s = gets.chomp.split('').map(&:to_i)
s0 = (1..s.size).map { |x| (x+1) % 2 }
s1 = (1..s.size).map { |x| x % 2 }
d0 = 0
d1 = 0
(0..(s.size-1)).each do |i|
  d0 += s[i] ^ s0[i]
  d1 += s[i] ^ s1[i]
end
puts [d0, d1].min
