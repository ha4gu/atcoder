A, B, C = gets.split.map(&:to_i)
rest = C - (A - B)
puts rest >= 0 ? rest : 0
