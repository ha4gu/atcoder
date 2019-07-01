n = gets.to_i
hash = {}
n.times do
  name = gets[0]
  if %w(M A R C H).include?(name)
    if hash[name].nil?
      hash[name] = 1
    else
      hash[name] += 1
    end
  end
end

if hash.length < 3
  puts 0
else
  march = %w(M A R C H)
  count = 0
  march.combination(3).to_a.each do |combi|
    if hash[combi[0]].nil? || hash[combi[1]].nil? || hash[combi[2]].nil?
      next
    else
      count += hash[combi[0]] * hash[combi[1]] * hash[combi[2]]
    end
  end
  puts count
end
