S = gets.chomp.split("")
$debug = false

### DFS: Depth-First Search = 深さ優先探索
# スタックによる実装
def iterative_dfs(patterns, limit)
  # スタックとなる配列を用意し、初期状態である空文字列を格納する
  stack = [""]
  until stack.empty?
    # スタックから1つ取り出す（末尾から取り出すのでpopを使う）
    string = stack.pop

    if string.length == limit
      # 頂点に達した際、文字列を配列に格納する
      patterns << string.split("").to_a.unshift(nil) unless string.empty?
    else
      # 分岐処理
      stack << string + " "
      stack << string + "+"
    end
  end
end

patterns = [] # 結果を格納する配列を用意しておく
iterative_dfs(patterns, S.size - 1)
p patterns if $debug # 組み合わせの表示

answer = 0
patterns.each do |pattern|
  expression = S[0]
  (1...S.length).each do |i|
    expression += "+" if pattern[i] == "+"
    expression += S[i]
  end
  p expression if $debug
  p eval expression if $debug
  answer += eval expression
end

# 入力が1桁の場合の考慮を忘れていた……。
if S.size == 1
  answer = S[0].to_i
end

puts answer
