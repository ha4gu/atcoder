n, x = gets.split.map(&:to_i)
ls = [0]
ls += gets.split.map(&:to_i)
previous = 0
ls.map! { |e|
  previous += e
}.map! { |e| e <= x ? e : nil }
puts ls.compact.size
