$debug = false
$flag = false
$count = 0

def func(array, answer)
  $count += 1
  # p array if $debug
  # p answer if $debug

  return if $flag

  if array.empty?
    # arrayが空になった = 操作手順が完成した
    puts "Yay!" if $debug
    puts answer.reverse
    $flag = true
  else
    # arrayが空ではない = 操作を探す
    (array.size-1).step(0, -1) do |k|
      break if $flag
      # 大きい方から見ていって、適合するポイントがあれば再起で放り投げる
      if array[k] == k+1
        next_array = array.dup
        next_array.delete_at(k)
        func(next_array, answer+[k+1])
      end
    end
  end
end

_N = gets.to_i
bs = gets.split.map(&:to_i)

# 先にチェック。n番目にnよりも大きな数字があったら成立せず。
0.step(bs.size - 1, 1) do |n|
  if bs[n] > n + 1
    puts "-1"
    $flag = true
    break
  end
end

# メイン処理。前のチェックでNGで終了フラグが立ってる場合には実行せず。
func(bs, []) unless $flag

# メイン処理を行っても終了フラグが立っていないならダメだったってこと。
puts "-1" unless $flag

puts "count: #{$count}" if $debug
