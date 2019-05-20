s = gets.chomp.split("")
t = gets.chomp.split("")

flag = true
if s.uniq.count < t.uniq.count
  # お手本よりも文字種別数が少ない場合にはそもそも無理。
  flag = false
else
  # tに含まれている各文字について、tにおいてその文字が現れる箇所を抽出し、
  # sにおける同じ箇所の文字を確認。このときその文字種別が1でない場合には
  # 一致させることはできない。
  t.uniq.each do |char|
    # p char
    # p t.map.with_index { |e, i| e==char ? i : nil }.compact
    # p t.map.with_index { |e, i| e==char ? i : nil }.compact.map { |i| s[i] }
    # p t.map.with_index { |e, i| e==char ? i : nil }.compact.map { |i| s[i] }.uniq
    # p t.map.with_index { |e, i| e==char ? i : nil }.compact.map { |i| s[i] }.uniq.size
    # p t.map.with_index { |e, i| e==char ? i : nil }.compact.map { |i| s[i] }.uniq.size == 1
    if t.map.with_index { |e, i| e==char ? i : nil }.compact.map { |i| s[i] }.uniq.size != 1
      flag = false
      break
    end
  end
end

puts flag ? "Yes" : "No"
