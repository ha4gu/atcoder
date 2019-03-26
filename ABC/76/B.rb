$n, $k = readlines.map(&:to_i)
def dnf(operations, results)
  if operations.size == $n
    point = 1
    operations.each do |operation|
      point *= 2 if operation == 'A'
      point += $k if operation == 'B'
    end
    results << point
    return
  end

  dnf(operations + ['A'], results)
  dnf(operations + ['B'], results)

  if operations.empty?
    return results.min
  end
end
puts dnf([], [])
