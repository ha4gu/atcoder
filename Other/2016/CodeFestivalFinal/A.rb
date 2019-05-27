h, w = gets.split.map(&:to_i)
alphabets = ("A".."Z").to_a
h.times do |i|
  line = gets.split
  hit = line.index("snuke")
  if ! hit.nil?
    puts "#{alphabets[hit]}#{i+1}"
  end
end
