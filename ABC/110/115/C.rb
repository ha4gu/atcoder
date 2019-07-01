_n, k = gets.split.map(&:to_i)
trees = readlines.map(&:to_i).sort
diffs = []
trees.each.with_index { |tree, i|
  unless trees[i+k-1].nil?
    diff = trees[i+k-1] - tree
    diffs << diff
    break if diff == 0
  end
}
puts diffs.min
