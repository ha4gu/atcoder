N = gets.to_i
flag = false
(0..(N/7)).each do |donut|
  (0..(N/4)).each do |cake|
    if donut*7 + cake*4 == N
      puts "Yes"
      flag = true
    end
    break if flag
  end
  break if flag
end
puts "No" unless flag
