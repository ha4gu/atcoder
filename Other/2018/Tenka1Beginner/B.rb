a, b, k = gets.split.map(&:to_i)
k.times do |i|
  if i.even?
    a - 1 if a.odd?
    a /= 2
    b += a
  else
    b - 1 if b.odd?
    b /= 2
    a += b
  end
end
puts "#{a} #{b}"
