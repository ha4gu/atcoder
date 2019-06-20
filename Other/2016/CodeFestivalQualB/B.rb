n, a, b = gets.split.map(&:to_i)
players = gets.chomp.split("")
qualified = []
players.each do |player|
  if player == "a"
    if qualified.length < a + b
      qualified << player
      puts "Yes"
    else
      puts "No"
    end
  elsif player == "b"
    if qualified.length < a + b && qualified.count("b") < b
      qualified << player
      puts "Yes"
    else
      puts "No"
    end
  else # player == "c"
    puts "No"
  end
end
