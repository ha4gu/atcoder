short, cheese, n = gets.split.map(&:to_i)
xs = gets.chomp.split("")
xs.each do |customer|
  case customer
  when "S"
    short -= 1 unless short == 0
  when "C"
    cheese -= 1 unless cheese == 0
  else # "E"
    if (short == cheese && short != 0) || short > cheese
      short -= 1
    elsif short < cheese
      cheese -= 1
    end
  end
end
puts short
puts cheese
