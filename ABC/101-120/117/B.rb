gets # line 1
Ls = gets.split.map(&:to_i) # line 2, treat it as array
longest = Ls.max
puts (Ls.inject(:+)-longest > longest) ? "Yes" : "No"
