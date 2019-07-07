L, R = gets.split.map(&:to_i)
min = 2019
find_zero = false
L.step(R-1) do |i|
  (i+1).step(R) do |j|
    min = [min, i*j%2019].min
    find_zero = true if min == 0
    break if find_zero
  end
  break if find_zero
end
puts min
