height, width = gets.split.map(&:to_i)
field = []
height.times do
  field << gets.chomp.split('').map{ |p| p=='.' ? 0 : p }
end
field.each.with_index do |line, h|
  line.each.with_index do |point, w|
    if point == '#'
      (h-1..h+1).each do |h2|
        (w-1..w+1).each do |w2|
          if h2.between?(0, height-1) && w2.between?(0, width-1)
            field[h2][w2] += 1 unless field[h2][w2] == '#'
          end
        end
      end
    end
  end
end
field.each do |line|
  puts line.join('')
end
