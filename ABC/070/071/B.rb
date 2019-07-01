s = gets.chomp.split('')
alphabets = ('a'..'z').to_a
s.each do |c|
  alphabets.delete(c)
  if alphabets.empty?
    break
  end
end
puts alphabets.empty? ? 'None' : alphabets[0]
