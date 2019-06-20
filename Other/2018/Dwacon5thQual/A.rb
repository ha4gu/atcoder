_n = gets
frames = gets.split.map(&:to_i)
average = frames.inject(:+) / frames.length.to_f
frames.map! { |f| (f-average).abs }
puts frames.index(frames.min)
