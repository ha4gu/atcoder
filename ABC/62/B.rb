h, w = gets.split.map(&:to_i)
image = []
image << '#' * (w+2)
h.times do
  str = gets.chomp
  image << '#' + str + '#'
end
image << '#' * (w+2)
image.each do |line|
  puts line
end
