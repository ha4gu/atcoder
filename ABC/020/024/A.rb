a, b, c, k = gets.split.map(&:to_i)
s, t = gets.split.map(&:to_i)
c = 0 if s+t < k
puts s*(a-c) + t*(b-c)
