s = gets.chomp.split("")
K = gets.to_i

used_alphabets = s.uniq.sort
dict = []

used_alphabets.each do |alphabet|
  indices = s.map.with_index { |char, index| char == alphabet ? index : nil }.compact
  part_dict = []
  indices.each do |start_index|
    K.times do |k|
      part_dict << s[start_index, k + 1].join("")
    end
  end # of indices.each
  dict += part_dict.uniq.sort
  break if dict.length >= K
end # of used_alphabets.each

puts dict[K-1]
