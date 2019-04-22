# arr = [1,2,3,4,5,6,7,8,9,10]

# arr.each do |num|
#   puts num
# end

def plusMinus(arr)
  positive_count = 0.0
  negative_count = 0.0
  zero_count = 0.0
  arr_length = arr.size

  arr.each do |num|
    if num > 0
      positive_count += 1
    elsif num < 0
      negative_count += 1
    else
      zero_count += 1
    end
  end
    puts positive_count/arr_length
    puts negative_count/arr_length
    puts zero_count/arr_length
end

plusMinus([-4,3,-9,0,4,1])

