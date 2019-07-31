S = gets.chomp
sound_scale = %w(Do Re Mi Fa So La Si)
mi_index = S.index("WWBWBWB") # インデックスの位置が ミ の音
if mi_index
  mi_index
  white_count = S[0...mi_index].count("W")
  (sound_scale.index("Mi") + 7 - white_count) % 7
  puts sound_scale[(sound_scale.index("Mi") + 7 - white_count) % 7]
else
  si_index = S.index("WWBWB") # インデックスの位置が シ の音
  white_count = S[0...si_index].count("W")
  (sound_scale.index("Si") + 7 - white_count) % 7
  puts sound_scale[(sound_scale.index("Si") + 7 - white_count) % 7]
end
