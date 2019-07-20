N = gets.to_i
as = [nil] + gets.split.map(&:to_i)
bs = Array.new(N/2+1) { nil } + as[N/2+1..-1]

(N/2).step(1, -1) do |i|
  sum = 0
  ratio = 2
  until i * ratio > N
    sum += bs[i * ratio]
    ratio += 1
  end

  if as[i] == sum % 2
    bs[i] = 0
  else
    bs[i] = 1
  end

end

# p bs

puts bs.count(1)
answer_array = bs.map.with_index { |b, i| b == 1 ? i : nil }.compact
puts answer_array.join(" ") unless answer_array.empty?
