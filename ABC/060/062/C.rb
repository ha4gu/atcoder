H, W = gets.split.map(&:to_i).sort # 常に W >= H であるものとする
answer = nil

if H % 3 == 0 || W % 3 == 0
  # 縦横どちらかが3で割れるならば3等分が可能ということなので答えは0になる
  answer = 0
else
  # 縦横どちらも3では割り切れない場合

  # まず長辺で分割してから短辺で分割するパターン
  w_cdds = []
  (-1..1).each do |num|
    temp = num + W/3
    w_cdds << temp if temp.between?(1, W-1)
  end
  w_cdds.each do |x|
  # 1.step(W-1) do |x|
    pieces = [x*H, (W-x)*(H/2), (W-x)*(H-(H/2))]
    answer = [answer, pieces.max - pieces.min].compact.min
  end

  # 次に短辺で分割してから長辺で分割するパターンパターン
  h_cdds = []
  (-1..1).each do |num|
    temp = num + H/3
    h_cdds << temp if temp.between?(1, H-1)
  end
  h_cdds.each do |y|
  # 1.step(H-1) do |y|
    pieces = [y*W, (H-y)*(W/2), (H-y)*(W-(W/2))]
    answer = [answer, pieces.max - pieces.min].compact.min
  end

  # 長辺で3分割するパターン
  answer = [answer, H].compact.min
end

puts answer
