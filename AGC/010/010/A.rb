_n = gets
puts gets.split.map { |e| e.to_i.odd? ? 1 : nil }.compact.size.odd? ? "NO" : "YES"

# NOとなるパターンは、奇数が1つ余ってしまって消せない場合。
# よって、整数列に奇数が奇数個ある場合はアウトということになる。
