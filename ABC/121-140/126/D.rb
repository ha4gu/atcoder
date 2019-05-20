$debug = true
n, m = gets.split.map(&:to_i)
relations = []

# 関係性の抽出
m.times do
  x, y, z = gets.split.map(&:to_i)
  z = z.even? ? :same : :diff
  relations << {cards: [x, y].sort, rel: z }
end
p relations if $debug

# カードごとに
frequencies = (1..n).to_a.map do |i|
  count = 0
  relations.each do |relation|
    count += relation[:cards].count(i)
  end
  count
end
p frequencies if $debug

# とりあえず初期状態はすべてnil
cards = Array.new(6) { nil }
p cards if $debug


# 一番頻度の高いインデックスを取得 (0スタートなので要注意)
current_index = frequencies.index(frequencies.max)
p current_index if $debug
# 勝手にそこが 1 だと決めつける
cards[current_index] = 1
p cards if $debug
# このカードを含む関係性を抽出
relations.select { |r| r[:cards].include?(current_index + 1) }.each do |r|
  r[:cards].each do |c|
    if c != current_index + 1
      cards[c - 1] = (r[:rel] == :same ? 1 : 2)
      p cards if $debug
    end
  end
end

