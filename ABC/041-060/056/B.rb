w, a, b = gets.split.map(&:to_i)
answer = 0
unless b.between?(a, a+w) || (b+w).between?(a, a+w)
  answer = [((a+w) - b).abs, (a-(b+w)).abs].min
end
puts answer
