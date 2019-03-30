debug = false
n, q = gets.split.map(&:to_i)
s = gets.chomp.split('')
golem = Array.new(n) { 1 }
p golem if debug
puts if debug
q.times do
  t, d = gets.chomp.split(' ')
  # まずは対象となるマスを特定する
  targets = s.map.with_index { |x, i| x == t ? i : nil }.compact
  if d == 'L'
    # 左に移動する場合: 昇順で処理していけばOK
    targets.each do |i|
      move = golem[i]
      golem[i] = 0
      puts "move to Left: #{move}" if debug
      unless i == 0
        golem[i-1] = golem[i-1] + move
      end
    end
  elsif d == 'R'
    # 右に移動する場合: 降順で処理していけばOK
    targets.reverse.each do |i|
      move = golem[i]
      golem[i] = 0
      puts "move to Right: #{move}" if debug
      unless i == n-1
        golem[i+1] = golem[i+1] + move
      end
    end
  end
  p golem if debug
end
puts if debug
puts golem.inject(:+)
