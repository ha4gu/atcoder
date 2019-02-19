n = gets.to_i
a = gets.split.map(&:to_i)

a.sort!
a.reverse!

alice = []
bob = []

while a.length > 0
  alice << a.first
  a.shift
  bob << a.first unless a.first.nil?
  a.shift
end

puts alice.inject(:+) - bob.inject(:+)
