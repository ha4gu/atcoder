n, x = gets.split.map(&:to_i)
scenes = gets.chomp.split("").map(&:to_i)
times = readlines.map(&:to_i)
puts times.map.with_index { |time, i| scenes[i] == 0 ? time : [time, x].min }.inject(:+)
