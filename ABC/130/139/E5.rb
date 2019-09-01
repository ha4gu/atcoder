debug = false

N = gets.to_i
orders = []
N.times do
  orders << gets.split.map { |char| char.to_i - 1 }
end

continue_flag = true
day = 0

while true
  # まだ未消化の試合があるプレイヤーを抽出
  vacant_players = orders.map.with_index { |order, i| order.nil? ? nil : i }.compact
  if vacant_players.empty?
    # 全パターン消化できていた"アガリ"パターン
    puts day
    break
  end

  match = 0
  day += 1

  p orders if debug # 未消化対戦相手リスト

  N.times do |player|
    puts "player: #{player}" if debug
    if vacant_players.include?(player)
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

  # 試合が1つも組めなかった場合は終了パターン
  if match == 0
    if orders.compact.empty?
      # 前日の時点で全パターン消化できていた"アガリ"パターン
      puts day - 1
    else
      # デッドロックがかかった"ハズレ"パターン
      puts "-1"
    end

    # 終了
    break
  end
end
