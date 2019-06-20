N = gets.to_i
current = nil
N.times do
  order, point = gets.split.map(&:to_i)
  if current.nil? || current[:order] < order
    current = { order: order, point: point }
  end
end
puts current[:order] + current[:point]
