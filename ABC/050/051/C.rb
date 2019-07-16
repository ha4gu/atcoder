sx, sy, tx, ty = gets.split.map(&:to_i)
h = ty - sy
w = tx - sx

answer = ""

# (sx, sy)から(tx, ty)へ移動
answer += "U" * h
answer += "R" * w

# (tx, ty)から(sx, sy)へ移動
answer += "D" * h
answer += "L" * w

# (sx, sy)から(tx, ty)へ、若干遠回りして移動
answer += "L"
answer += "U" * (h + 1)
answer += "R" * (w + 1)
answer += "D"

# (tx, ty)から(sx, sy)へ、若干遠回りして移動
answer += "R"
answer += "D" * (h + 1)
answer += "L" * (w + 1)
answer += "U"

puts answer
