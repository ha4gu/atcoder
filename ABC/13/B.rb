a, b = readlines.map(&:to_i)
puts [(b-a).abs, (b+10-a).abs, (a+10-b).abs].min
