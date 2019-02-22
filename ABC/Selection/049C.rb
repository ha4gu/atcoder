# メモリ制限超過……。

def sliceable?(a)
  r = []
  a.each do |s|
    r << s.sub(/dream/,"") if s.start_with?("dream")
    r << s.sub(/dreamer/,"") if s.start_with?("dreamer")
    r << s.sub(/erase/,"") if s.start_with?("erase")
    r << s.sub(/eraser/,"") if s.start_with?("eraser")
  end
  if r.empty?
    false
  elsif r.include?("")
    true
  else
    sliceable?(r)
  end
end
puts sliceable?([gets.chomp]) ? "YES" : "NO"
