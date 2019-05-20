n, t = gets.split.map(&:to_i)
close_at = 0
opening = 0
n.times do
  coming = gets.to_i
  if close_at > coming
    opening += t - (close_at - coming)
  else
    opening += t
  end
  close_at = coming + t
end
puts opening
