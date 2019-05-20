A, B, C, X = 4.times.map { gets.to_i }
patterns = []
(0..A).each do |a|
  (0..B).each do |b|
    (0..C).each do |c|
      patterns << [a, b, c] if a*500 + b*100 + c*50 == X
    end
  end
end
puts patterns.size
