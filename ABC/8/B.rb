n = gets.to_i
names = []
counts = []
n.times do
  name = gets.chomp
  if names.index(name)
    counts[names.index(name)] += 1
  else
    names << name
    counts << 1
  end
end
puts names[counts.index(counts.max)]
