small, middle, large = gets.split.map(&:to_i).sort

if (small+middle).odd?
  target = large + 1
else
  target = large
end

diff = target*3 - small - middle - large
puts diff / 2
