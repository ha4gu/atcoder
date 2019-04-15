w, h = gets.split.map(&:to_i)
puts (w/4.0*3).to_i == h ? '4:3' : '16:9'
