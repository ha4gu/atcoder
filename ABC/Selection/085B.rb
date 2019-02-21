N = gets.to_i
d = []
N.times.each do
  d << gets.to_i
end
puts d.uniq.length
