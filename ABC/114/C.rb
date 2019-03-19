N = gets.chomp
def dfs(num, array)
  # 入力値よりも桁数が大きくならない範囲で処理
  if num.length <= N.length
    array << num unless num.empty? # 初期値避け
    dfs(num + "3", array)
    dfs(num + "5", array)
    dfs(num + "7", array)
  end
  if num.empty?
    array
  end
end
array = dfs("", [])
# 入力値よりも小さく、3, 5, 7を含むものだけ残して個数を出す
puts array.map { |num| num.to_i <= N.to_i && num.include?("3") && \
  num.include?("5") && num.include?("7") ? num : nil }.compact.count
