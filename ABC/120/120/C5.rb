def get_omit(str)
  tempcount = 0
  tempcount += str.scan("01").length * 2
  str = str.gsub("01", "")
  tempcount += str.scan("10").length * 2
  str = str.gsub("10", "")
  return (tempcount == 0) ? [nil, 0] : [str, tempcount]
end

point = 0
string = gets.chomp # 文字列として受け取る

count_of_num = [string.count("0"), string.count("1")]
count = count_of_num.min

count.times do
  string, num = get_omit(string)
  break if string.nil?
  point += num
end

puts point
