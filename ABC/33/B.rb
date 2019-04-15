n = gets.to_i
name = []
population = []
n.times do
  s, p = gets.split
  name << s
  population << p.to_i
end
new_name = 'atcoder'
n.times do |i|
  new_name = name[i] if population[i] > population.inject(:+)/2.0
end
puts new_name
