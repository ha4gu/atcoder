N = gets.to_i
takahashi, aoki = gets.split.map(&:to_i)
(N-1).times do
  # puts "t: #{takahashi}, a: #{aoki}"
  t_ratio, a_ratio = gets.split.map(&:to_i)
  scale = nil
  if takahashi > t_ratio || aoki > a_ratio
    scale = [(takahashi/t_ratio.to_f).ceil, (aoki/a_ratio.to_f).ceil].max
  else
    scale = 1
  end
  takahashi = t_ratio * scale
  aoki      = a_ratio * scale
end

# puts "t: #{takahashi}, a: #{aoki}"
puts takahashi + aoki
