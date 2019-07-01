o, e = 2.times.map { gets.chomp }
array = []
(o.length).times do |i|
  array << o[i]
  array << e[i]
end
puts array.join('')
