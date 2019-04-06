n, m = gets.split.map(&:to_i)
image_a = []
n.times do
  image_a << gets.chomp
end
image_b = []
m.times do
  image_b << gets.chomp
end
p image_a
p image_b
(image_a.size).times do |i|
  if image_a[i].include?(image_b[0])
    index = 0
    until index.nil?
      position = image_a[i].index(image_b[0], index)
      flag = true
      (image_b.size).times do |j|
        flag = false if image_a[i+j].index(image_b[j], position).nil?
      end
      if flag
        puts 'Yes'
        break
      end
      index = position + 1
    end
  else
    next
  end
end
