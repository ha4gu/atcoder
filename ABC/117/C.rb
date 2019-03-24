N, _M = gets.split.map(&:to_i)
Xs = gets.split.map(&:to_i).sort
1.times do
  max_gap = [0, 0]
  (0..(Xs.size-2)).each do |i|
    p i
    if Xs[i+1] - Xs[i] > max_gap[1]
      max_gap = [i, Xs[i+1] - Xs[i]]
    end
  end
  p max_gap
end
