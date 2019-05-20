N, _M, X = gets.split.map(&:to_i)
array = Array.new(N+1) { 0 }
tolls = gets.split.map(&:to_i)
tolls.each do |toll|
  array[toll] = 1
end
score = []
score << array[0..X].inject(:+)
score << array[X..-1].inject(:+)
puts score.min
