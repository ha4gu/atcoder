def mod_accessory(init, length)
  current = init
  count = 1
  until current.size == length
    case count % 3
    when 1
      current = "a" + current + "c"
    when 2
      current = "c" + current + "a"
    when 0
      current = "b" + current + "b"
    end
    count += 1
  end
  {string: current, count: count-1}
end

n = gets.to_i
if n.even?
  puts "-1"
else
  s = gets.chomp
  accessory = mod_accessory("b", n)
  # p accessory
  if accessory[:string] == s
    puts accessory[:count]
  else
    puts "-1"
  end
end
