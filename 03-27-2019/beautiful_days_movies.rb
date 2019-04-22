def beautifulDays(i, j, k)
  count = 0
  (i..j).each do |num|
    str = num.to_s.reverse 
    reversed = str.to_i 
    test = ((num - reversed.abs) / k.to_f)
    if test == test.floor 
      count += 1 
    end
  end
  count 
end

p beautifulDays(20,23, 6)