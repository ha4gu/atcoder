n = gets.to_i
array = []
(0..10).each do |i|
  array << 2 ** i
end
puts array.map{ |x| n >= x ? x : nil }.compact.max
