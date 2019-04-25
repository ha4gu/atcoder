islands = gets.to_i
population = gets.split.map(&:to_i)
if population.inject(:+) % islands != 0
  # 住人の総数が島の数で割り切れない場合にはどうやっても無理
  puts -1
else
  avgpop = population.inject(:+) / islands # 島ごとに住むべき住人の数
  bridge = Array.new(islands-1){0}
  islands.times do |i|
    next if i == islands - 1
    # iの島と i+1の島との間の橋iについて考える
    bridge[i] = 1 if population[0..i].inject(:+) > (0..i).size * avgpop
    bridge[i] = 1 if population[i+1..-1].inject(:+) > (i+1..islands-1).size * avgpop
  end
  # p bridge
  puts bridge.inject(:+)
end
