_n, l, r = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
puts as.map { |a|
  if a < l
    l
  elsif a > r
    r
  else
    a
  end
}.join(" ")
