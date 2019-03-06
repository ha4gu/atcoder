N = gets.to_i
count = 0
(1..N).each do |num|
  if num.odd?
    ds = []
    (1..num).each do |i|
      ds << i if num % i == 0
    end
    count += 1 if ds.length == 8
  end
end
puts count
