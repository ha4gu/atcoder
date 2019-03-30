n, x = gets.split.map(&:to_i)
s = gets.split.map(&:to_i)
$answers = []
def dnf(x, array)
  if array.empty?
    $answers << x
  else
    array.each.with_index do |y, i|
      unless x%y == 0
        new_array = array.dup
        new_array.delete_at(i)
        dnf(x%y, new_array)
      end
    end
  end
end
dnf(x, s)
puts $answers.inject(:+) % (10**9+7)
