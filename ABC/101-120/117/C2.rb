n, m = gets.split.map(&:to_i)
if m == 1 || n >= m
  puts '0'
else
  nums = gets.split.map(&:to_i).sort
  gaps = []
  (0..(nums.size-2)).each do |i|
    gaps << nums[i+1] - nums[i]
  end
  omit = gaps.sort.reverse[0...n-1].inject(:+)
  omit = 0 if omit.nil?
  puts (nums.max - nums.min) - omit
end
