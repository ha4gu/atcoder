N = gets.to_i
ss = N.times.map { gets.chomp.split("").sort.join("") }
count = 0

hash = {}
ss.map { |e|
  if hash[e].nil?
    hash[e] = 1
  else
    hash[e] += 1
  end
}

count = 0
hash.each do |key, value|
  if value > 1
    count += (value * (value-1))/2
  end
end
puts count
