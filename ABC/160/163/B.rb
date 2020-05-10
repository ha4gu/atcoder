N, M = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)

rest = N - As.inject(:+)
puts rest >= 0 ? rest : "-1"
