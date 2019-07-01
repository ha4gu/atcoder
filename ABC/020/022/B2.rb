n = gets.to_i
flowers = readlines.map(&:to_i)
count = 0
until flowers.empty?
  f = flowers.shift
  next if f == 0
  count += flowers.count(f)
  flowers.map! { |x| x==f ? 0 : x }
end
puts count
