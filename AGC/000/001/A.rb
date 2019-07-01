_n = gets.to_i
ls = gets.split.map(&:to_i).sort.reverse
sum = 0
until ls.empty?
  ls.shift
  sum += ls.shift
end
puts sum
