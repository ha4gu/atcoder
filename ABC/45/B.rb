cards_a = gets.chomp.split('') + ['A']
cards_b = gets.chomp.split('') + ['B']
cards_c = gets.chomp.split('') + ['C']
current = 'a'
until cards_a.size == 0 || cards_b.size == 0 || cards_c.size == 0
  current = case current
  when 'a' then cards_a.shift
  when 'b' then cards_b.shift
  when 'c' then cards_c.shift
  end
end
puts current