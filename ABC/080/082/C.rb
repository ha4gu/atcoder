def compress_array_to_hash(array)
  hash = {}
  array.map { |e|
    if hash[e].nil?
      hash[e] = 1
    else
      hash[e] += 1
    end
  }
  hash
end

n = gets.to_i
as = gets.split.map(&:to_i)
hash = compress_array_to_hash(as)
count = 0
hash.each do |key, value|
  if key > value
    count += value
  elsif key < value
    count += value - key
  end
end
puts count
