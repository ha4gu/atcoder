n, k = gets.split.map(&:to_i)
candidates_pair = []

# まずはaとbのペア候補を抽出
(1..n).each do |a|
  p = 1
  while p*k <= n*2
    b = p*k - a
    candidates_pair << [a, b] if b.between?(1, n)
    p += 1
  end
end
# p candidates_pair
# puts candidates_pair.count

candidates_trio = []
# aとbのペア候補を元にしてありうるcを抽出
candidates_pair.each do |a, b|
  q = 1
  while q*k <= n*2
    c = q*k - a
    candidates_trio << [a, b, c] if ((b + c) % k == 0 && c.between?(1, n))
    q += 1
  end
end
# p candidates_trio
puts candidates_trio.count

# うーん、これじゃ確実にTLEだな…
