def get_factorial_string(num)
  if !num.kind_of?(Integer) || num < 0
    nil
  elsif num == 0
    "1"
  else
    string = ""
    until num == 1
      string += "#{num}*"
      num -= 1
    end
    string += "1"
  end
end

dogs, monkeys = gets.split.map(&:to_i)
if (dogs - monkeys).abs > 1
  count = 0
else
  str = get_factorial_string(dogs) + " * " + get_factorial_string(monkeys)
  str += " * 2" if dogs == monkeys
  str += " % (10 ** 9 + 7)"
  count = eval str
end
puts count
