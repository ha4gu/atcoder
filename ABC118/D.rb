debug = 1

# 必要マッチ数の配列 needs
needs_all = [2, 5, 5, 4, 5, 6, 3, 7, 6]

n, m = gets.split(" ").map(&:to_i)

# n: 使うべきマッチの本数
# m: 使うべき数字の種類数

num = gets.split(" ").map(&:to_i).sort
p num if debug == 1

needs = []
num.each do |n|
  needs << needs_all[n-1]
end

p needs if debug == 1
current_min = needs.min # 必要とする本数のうち、一番少ない本数は?
p current_min if debug == 1
p num[current_min-1] if debug == 1 # 一番少ない本数で作れる *最初の数字*  はどれ?


