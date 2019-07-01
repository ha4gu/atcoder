str = gets.chomp.split("")
str << nil
previous = nil
str = str.map { |c|
  if c == previous
    nil
  else
    output = previous
    previous = c
    output
  end
}.compact

if str.size == 1
  puts 0
elsif str.size == 2
  puts 1
else # str.size >= 3
  # Wについて
  w_count = str.count("W")
  w_edge  = (str[0] + str[-1]).count "W"
  w_pattern = w_count * 2 - w_edge

  # Bについて
  b_count = str.count("B")
  b_edge  = (str[0] + str[-1]).count "B"
  b_pattern = b_count * 2 - b_edge

  puts [w_pattern, b_pattern].min
end
