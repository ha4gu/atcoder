N, A = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)

### DFS: Depth-First Search = 深さ優先探索
# スタックによる実装
def iterative_dfs(array, target)
  count = 0
  # スタックとなる配列を用意し、初期状態である空配列を格納する
  stack = [[]]
  until stack.empty?
    # スタックから1つ取り出す（末尾から取り出すのでpopを使う）
    current = stack.pop

    if current.length == array.size
      # 頂点に達した際の処理
      current = current.compact
      count += 1 if current.size > 0 \
                  && current.inject(:+) % current.size == 0 \
                  && current.inject(:+) / current.size == target
    else
      # 分岐処理
      stack << current + [nil]
      stack << current + [array[current.size]]
    end
  end
  count
end

puts iterative_dfs(xs, A)
