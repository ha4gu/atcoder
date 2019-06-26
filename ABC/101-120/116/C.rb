n = gets.to_i
heigths = gets.split.map(&:to_i)
heigths << 0
count = 0
until heigths.uniq.count == 1
  # p heigths # for debug
  # p count # for debug

  previous = false
  heigths.map! { |e|
    if e == 0
      count += 1 if previous
      previous = false
      e
    else
      previous = true
      e - 1
    end
  }
end
# p heigths # for debug
puts count
