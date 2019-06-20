_n = gets
a, b = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)
puts [ps.count { |p| p <= a }, ps.count { |p| p.between?(a+1, b) }, ps.count { |p| p > b }].min
