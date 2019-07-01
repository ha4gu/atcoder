_n = gets.to_i
a, b = gets.split.map(&:to_i)
_k = gets.to_i
cities = gets.split.map(&:to_i)
cities = [a] + cities + [b]
flag = true
cities.uniq.each do |city|
  if cities.count(city) > 1
    flag = false
    break
  end
end
puts flag ? "YES" : "NO"
