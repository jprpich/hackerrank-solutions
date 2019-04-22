def getTotalX(a, b)
  new_array = []
  new_array2 = []
  i = 1
  while i <= 100

    result = false

    a.each do |y|
      if i % y == 0
        result = true
      else
        result = false
        break
      end
    end

    if result
      new_array << i
    end


    b.each do |y|
      if y % i == 0
        result = true
      else
        result = false
        break
      end
    end

    if result
      new_array2 << i
    end


    i += 1
  end
  return (new_array & new_array2).length

end




print getTotalX([2,6], [24, 36]) # => 2 [6, 12]
#
puts getTotalX([2,4], [16, 32, 96]) # => 3 [4, 8, 16]
#
# print getTotalX([3,4], [24, 48]) # => 2