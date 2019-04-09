_n, m = gets.split.map(&:to_i)
cities = []
count = 0
m.times do
  p, y = gets.split.map(&:to_i)
  cities << { count: count, pref: p, year: y }
  count += 1
end
cities.sort! { |a, b|
  (a[:pref] <=> b[:pref]).nonzero? ||
  a[:year] <=> b[:year]
}
prefs = cities.map { |city| city[:pref] }.uniq.sort
prefs.each do |pref|
  count = 1
  cities.map { |city|
    if city[:pref] == pref
      city[:number] = count
      count += 1
    else
      city
    end
  }
end
cities.sort_by { |city| city[:count] }.each do |city|
  puts sprintf "%06d%06d",city[:pref],city[:number]
end
