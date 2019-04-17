n = gets.to_i
sum = 0
radius = readlines.map(&:to_i).sort.reverse
radius.each.with_index do |r, i|
  if i.even?
    sum += r**2
  else
    sum -= r**2
  end
end
puts sum*Math::PI
