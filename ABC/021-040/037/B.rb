n, q = gets.split.map(&:to_i)
array = Array.new(n){ 0 }
q.times do
  l, r, t = gets.split.map(&:to_i)
  array.map!.with_index { |e, i|
    if l-1 <= i && i <= r-1
      t
    else
      e
    end
  }
end
array.each do |e|
  puts e
end