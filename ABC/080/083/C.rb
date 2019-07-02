def get_log_2(num)
  count = 1
  until 2 ** count > num
    count += 1
  end
  count - 1
end

x, y = gets.split.map(&:to_i)
puts get_log_2(y/x) + 1
