_N = gets.to_i
T, A = gets.split.map(&:to_i)
candidates = gets.split.map(&:to_i)
candidates.map! { |x| x = (T-x*0.006 - A).abs }
puts candidates.index(candidates.min)+1
