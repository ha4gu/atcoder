N, M = gets.split.map(&:to_i)
str_S = gets.split
str_T = gets.split

$debug = false

### DFS: Depth-First Search = 深さ優先探索
# 再帰による実装
def recursive_dfs(parts_of_array, part, count, num_array)

  # 頂点に達した際の処理
  if count == num_array.length
    parts_of_array << part
    return
  end

  # 分岐処理
  recursive_dfs(parts_of_array, part + num_array[count], count+1, num_array)
  recursive_dfs(parts_of_array, part                   , count+1, num_array)
end

parts_of_s = [] # 結果を格納する配列を用意しておく
recursive_dfs(parts_of_s, "", 0, str_S)
p parts_of_s.sort if $debug # 組み合わせの表示

parts_of_t = [] # 結果を格納する配列を用意しておく
recursive_dfs(parts_of_t, "", 0, str_T)
p parts_of_t.sort if $debug # 組み合わせの表示

def convert_parts(base_array)
  array = base_array.dup + [nil]
  previous = nil
  count = 0
  array.map! { |e|
    if e == previous
      count += 1
      nil
    else
      output = previous ? {part: previous, count: count} : nil
      previous = e
      count = 1
      output
    end
  }.compact!
end

converted_s = convert_parts(parts_of_s.sort)
converted_t = convert_parts(parts_of_t.sort)

count = 0
converted_s.each do |part_s|
  converted_t.each do |part_t|
    if part_s[:part] == part_t[:part]
      count += part_s[:count] * part_t[:count]
      count %= (10**9 + 7)
    end
  end
end
puts count
