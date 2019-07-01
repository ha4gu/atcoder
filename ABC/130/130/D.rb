N, K = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

count = 0
# loop = 0
N.times do |head|
  current = 0
  as[head..-1].map.with_index { |a, i|
    # loop += 1
    if current + a >= K
      # count += 1
      count += as[head..-1][i..-1].size
      break
    end
    current += a
  }
end
# p loop
puts count
