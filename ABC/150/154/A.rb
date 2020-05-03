s, t = gets.chomp.split
a, b = gets.split.map(&:to_i)
temp = { s => a, t => b }
u = gets.chomp
temp[u] -= 1
puts temp.map { |key, value| value.to_s }.join(" ")
