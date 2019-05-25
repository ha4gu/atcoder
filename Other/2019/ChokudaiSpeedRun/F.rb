n = gets.to_i
coins = []
n.times do
  coins << gets.split.map(&:to_i).sort
end
puts coins.uniq.count
