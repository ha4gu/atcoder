string = gets.chomp # 文字列として受け取る
count_of_num = [string.count("0"), string.count("1")]
puts count_of_num.min*2
