_ = gets
hs = gets.split.map(&:to_i).sort
puts hs[-1] - hs[0]
