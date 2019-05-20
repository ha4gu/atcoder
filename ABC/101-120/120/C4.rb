def get_omit(str)
  if str.include?("010101")
    return [str.sub("010101", ""), 6]
  elsif str.include?("101010")
    return [str.sub("101010", ""), 6]
  elsif str.include?("0101")
    return [str.sub("0101", ""), 4]
  elsif str.include?("1010")
    return [str.sub("1010", ""), 4]
  elsif str.include?("1001")
    return [str.sub("1001", ""), 4]
  elsif str.include?("0110")
    return [str.sub("0110", ""), 4]
  elsif str.include?("01")
    return [str.sub("01", ""), 2]
  elsif str.include?("10")
    return [str.sub("10", ""), 2]
  else
    return [nil, 0]
  end
end
point = 0
string = gets.chomp # 文字列として受け取る
while true
  string, count = get_omit(string)
  break if string.nil?
  point += count
end
puts point
