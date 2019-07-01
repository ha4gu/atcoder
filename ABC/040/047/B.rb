w, h, n = gets.split.map(&:to_i)

# 領域上、白は0、黒は1とする

def init_2d_array(height, width, initial="")
  Array.new(height){ Array.new(width, initial) }
end
field = init_2d_array(h, w, 0)

n.times do
  x, y, a = gets.split.map(&:to_i)
  case a
  when 1
    # x < xi の領域を黒くする
    field.map! { |line|
      line.map.with_index { |e, i|
        i < x ? 1 : e
      }
    }
  when 2
    # x > xi の領域を黒くする
    field.map! { |line|
      line.map.with_index { |e, i|
        i >= x ? 1 : e
      }
    }
  when 3
    # y < yi の領域を黒くする
    field.map!.with_index { |line, i|
      line.map { |e|
        i < y ? 1 : e
      }
    }
  when 4
    # y > yi の領域を黒くする
    field.map!.with_index { |line, i|
      line.map { |e|
        i >= y ? 1 : e
      }
    }
  end
end

count_white = 0
field.reverse.each do |line|
  line.map { |e| e == 0 ? count_white += 1 : nil }
end
puts count_white
