N = gets.to_i
ps = []
ps = N.times.map { gets.to_i }
ps = ps.sort.reverse
ps[0] /= 2
puts ps.inject(:+)
