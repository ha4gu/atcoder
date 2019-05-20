A, B, K = gets.split.map(&:to_i)
if B-A < K*2
  (A..B).each do |num|
    puts num unless num.between?(A+K, B-K)
  end
else
  array = (A..(A+K-1)).to_a
  array += ((B-K+1)..B).to_a
  puts array
end
