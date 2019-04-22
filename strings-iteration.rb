def count_multibyte_char(str)
    counter = 0
    str.each_char {|x|
      if x.bytesize > 1
        counter += 1
      end
    }
    counter
end

puts count_multibyte_char('¥1000')
