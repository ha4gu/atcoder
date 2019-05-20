A, B, K = gets.split.map(&:to_i)

if B-A < K*2
  (A..B).each do |num|
    unless num.between?(A+K, B-K)
      puts num
    end
  end
else
  (A..(A+K-1)).each do |num|
    puts num
  end
  ((B-K+1)..B).each do |num|
    puts num
  end
end
