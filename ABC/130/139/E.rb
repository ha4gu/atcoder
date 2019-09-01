debug = true

N = gets.to_i
orders = []
N.times do
  orders << gets.split.map { |char| char.to_i - 1 }
end

continue_flag = true
day = 0

while continue_flag
  day += 1
  vacant_players = (0...N).to_a # ここをもっと生成を減らせばいいのでは？
  match = 0
  p orders if debug

  N.times do |player|
    puts "player: #{player}" if debug
    if vacant_players.include?(player) && !orders[player].nil?
      opposite = orders[player][0]
      if vacant_players.include?(opposite) && orders[opposite][0] == player

        # 試合を組む
        vacant_players.delete(player)
        vacant_players.delete(opposite)

        # 消化
        orders[player] = orders[player][1..-1].empty? ? nil : orders[player][1..-1]
        orders[opposite] = orders[opposite][1..-1].empty? ? nil : orders[opposite][1..-1]

        # 試合が組めました
        match += 1
      end
    end
  end
  puts "day: #{day}, match: #{match}, vacant: #{vacant_players}" if debug

  puts "" if debug

  if orders.compact.empty?
    # 全パターン消化できた"アガリ"パターン
    continue_flag = false
    puts day
  elsif match == 0
    # デッドロックがかかった"ハズレ"パターン
    continue_flag = false
    puts "-1"
  end
end
