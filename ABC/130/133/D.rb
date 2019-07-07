n = gets.to_i
waters = gets.split.map(&:to_i)
min_index = waters.index(waters.min)
waters = waters[min_index..-1] + waters[0...min_index]

0.step(waters[0]) do |a|
  find_answer = false
  have_negative = false
  previous = a
  rains = [2*previous]
  n.times do |i|
    previous = waters[i] - previous
    if previous < 0
      have_negative = true
      break
    end
    rains << 2 * previous
  end
  next if have_negative

  if rains.first == rains.last
    find_answer = true
    rains.pop
    puts (rains[n-min_index..-1] + rains[0...n-min_index]).join(" ")
  end

  break if find_answer
end
