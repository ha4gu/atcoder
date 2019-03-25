$debug = false

# 入力の取得
n, _m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i).sort
p nums if $debug

# 差分からなる配列を取得
gaps = []
(0..(nums.size-2)).each do |i|
  gaps << nums[i+1] - nums[i]
end

# 差分の値が大きい順にソート
gaps = gaps.map.with_index{ |num, i| [num, i] }.sort{ |a, b| b[0] <=> a[0] }
# p gaps => [[90, 0], [8, 5], [7, 1], [7, 4], [3, 2], [2, 3]]

# n個に分割することになるので、差分の値が大きいn-1項目を取得
gaps = gaps[0...n-1]
# p gaps => [[90, 0], [8, 5]]

# 元の配列をカットする都合上、インデックスが大きい順に並べ替える
gaps = gaps.sort{ |a, b| b[1] <=> a[1] }
# p gaps => [[8, 5], [90, 0]]

# 元の配列をカットしていく作業
cut_nums = [nums.dup]
p cut_nums if $debug
gaps[0...n-1].each do |gap|
  cut_nums = [cut_nums[0][0..(gap[1])], cut_nums[0][(gap[1]+1)..-1]] + cut_nums[1..-1]
end
p cut_nums if $debug

# カットしてできた各配列について、最大値と最小値の差をスコアとして加算し、取得
score = 0
cut_nums.each do |array|
  score += (array.max-array.min)
end
puts score
