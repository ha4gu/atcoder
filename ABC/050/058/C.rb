a_to_z = ("a".."z").to_a
alphabets = {}
a_to_z.each do |char|
  alphabets[char] = 0
end

n = gets.to_i
words = n.times.map { gets.chomp }
alphabets.each do |key, value|
  count = []
  words.each do |word|
    count <<  word.count(key)
  end # of words.each
  alphabets[key] += count.min
end # of alphabets.map!
# p alphabets

answer = ""
alphabets.each do |key, value|
  unless value == 0
    answer += key * value
  end
end
puts answer
