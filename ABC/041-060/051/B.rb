k, s = gets.split.map(&:to_i)
array = []
(0..k).each do |x|
  (0..k).each do |y|
    z = s - x - y
    if z < 0
      break
    else
      array << [x, y, z] if z <= k
    end
  end
end
puts array.size
