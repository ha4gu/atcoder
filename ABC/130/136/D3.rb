S = gets.chomp.split("") + [nil]
current_mode = "R"
output = Array.new(S.length - 1) { 0 } # 末尾にnilを足してるので-1
index_rl = nil
count_even = 0
count_odd  = 0

S.map.with_index do |char, i|
  if current_mode == "L" && char == "R" || char.nil?
    # Lが続いていたけどRに切り替わった状態。
    # つまり書き換え処理が発生するタイミング。
    if index_rl.even?
      output[index_rl]   = count_even
      output[index_rl+1] = count_odd
    else
      output[index_rl]   = count_odd
      output[index_rl+1] = count_even
    end
    count_even = 0
    count_odd  = 0
    index_rl = nil
    current_mode = "R"
  elsif current_mode == "R" && char == "L"
    # Rが続いていたけどLに切り替わった状態。
    index_rl = i - 1 # この1つ前のRとこのLでRLを構成していることになる。
    current_mode = "L" # モードを切り替える
  # elsif current_mode == "R" && char == "R"
  #   # Rが続いている状態。
  # elsif current_mode == "L" && char == "L"
  #   # Lが続いている状態
  end

  if i.even?
    count_even += 1
  else
    count_odd += 1
  end
end

puts output.join(" ")
