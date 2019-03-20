A, B, K = gets.split.map(&:to_i)
(A..B).each do |num|
  unless num.between?(A+K, B-K)
    puts num
  end
end