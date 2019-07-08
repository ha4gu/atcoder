n, k = gets.split.map(&:to_i)
candles = gets.split.map(&:to_i)
min = nil

# 座標0以上に存在してるろうそくを取得
candles_0_right = candles.map { |position| position >= 0 ? position : nil }.compact
# 座標0以下に存在してるろうそくを取得
candles_0_left  = candles.map { |position| position <= 0 ? position : nil }.compact.reverse

# まず右に行って、途中で左に折り返すパターン
k.step(1, -1) do |i| # i = 3, 2, 1 (折り返すまでに右側から取得する個数)
  current = 0 # 現時点での座標、スタート時には0
  time = 0 # 移動に費やした時間

  # 座標0以上に存在しているろうそくの個数が、取得したい個数よりも少ない場合は諦める
  next if i > candles_0_right.count

  # 右側からi個取得したあとの座標を更新し、移動時間に足し込む
  time += (candles_0_right[i-1] - current).abs
  current = candles_0_right[i-1]

  # ここから折り返し、k-i個を取得する
  if k - i > 0
    # 座標0以下に存在しているろうそくの個数が、取得したい個数よりも少ない場合は諦める
    next if k - i > candles_0_left.count

    # 左側からk-i個取得した場合の移動時間を計算する
    time += (candles_0_left[k-i-1] - current).abs
  end
  min = [min, time].compact.min
end

# 逆パターン
k.step(1, -1) do |i|
  current = 0
  time = 0
  next if i > candles_0_left.count
  time += (candles_0_left[i-1] - current).abs
  current = candles_0_left[i-1]
  if k - i > 0
    next if k - i > candles_0_right.count
    time += (candles_0_right[k-i-1] - current).abs
  end
  min = [min, time].compact.min
end

puts min
