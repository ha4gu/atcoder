_ = gets.to_i
cards = gets.split.map(&:to_i)
cards = cards.sort.reverse
alice = []
bob = []
cards.each.with_index do |card, i|
  if i.even?
    alice << card
  else
    bob << card
  end
end
puts alice.inject(:+) - bob.inject(:+)
