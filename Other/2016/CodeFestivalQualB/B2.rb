n, a_limit, b_limit = gets.split.map(&:to_i)
a_pass = 0
b_pass = 0
players = gets.chomp.split("")
players.each do |player|
  if player == "a"
    if a_pass + b_pass < a_limit + b_limit
      a_pass += 1
      puts "Yes"
    else
      puts "No"
    end
  elsif player == "b"
    if a_pass + b_pass < a_limit + b_limit && b_pass < b_limit
      b_pass += 1
      puts "Yes"
    else
      puts "No"
    end
  else # player == "c"
    puts "No"
  end
end
