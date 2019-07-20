N = gets.to_i
takahashi, aoki = gets.split.map(&:to_i)
(N-1).times do
  # puts "t: #{takahashi}, a: #{aoki}"
  t_ratio, a_ratio = gets.split.map(&:to_i)
  scale = nil
  if takahashi > t_ratio || aoki > a_ratio
    t_scale = takahashi / t_ratio
    t_scale += 1 if takahashi % t_ratio != 0
    a_scale = aoki / a_ratio
    a_scale += 1 if aoki % a_ratio != 0
    scale = [t_scale, a_scale].max
  else
    scale = 1
  end
  takahashi = t_ratio * scale
  aoki      = a_ratio * scale
end

# puts "t: #{takahashi}, a: #{aoki}"
puts takahashi + aoki
