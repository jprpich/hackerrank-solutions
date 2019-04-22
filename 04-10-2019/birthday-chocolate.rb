# Complete the birthday function below.
def birthday(s, d, m)
  result = 0 
  s.each_with_index do |num, idx|
    test = s[idx...idx+m]
    if test.reduce(:+) == d 
      result += 1 
    end
  end
  result 
end


# m length
# d target_sum
p birthday([1,2,1,3,2], 3,2) # => 2
p birthday([1,1,1,1,1,1], 3,2) # => 0
p birthday([4], 4, 1) # => 1
