N, K = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

count = 0

current = 0
sum_as = [0]
sum_as += as.map { |e|
  current += e
}

N.times do |i|
  head = sum_as[i]
  index = sum_as.bsearch_index { |e| e - head >= K }
  if index.nil?
    break
  else
    count += sum_as[index..-1].size
  end
end

puts count
