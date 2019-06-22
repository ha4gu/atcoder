a = gets.to_i
b = gets.to_i
a.step(0, -1) do |i|
  if i % b == 0
    puts i
    break
  end
end
