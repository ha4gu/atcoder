s = gets.chomp.split('')
alphabets = ('a'..'z').to_a
alphabets.each do |c|
  unless s.include?(c)
    puts c
    break
  end
  puts 'None' if c == 'z'
end
