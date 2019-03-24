s, t = readlines.map { |x| x.chomp.split('').sort }
puts s.join < t.reverse.join ? 'Yes' : 'No'
