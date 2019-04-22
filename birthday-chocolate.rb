require 'byebug'
def birthday(s, d, m)
  if s.size == 1 && s[0] == d && m == 1 
    return 1 
  end 
  count = 0
  i = 0 
  while i < s.size - m 
    temp = 0
    m.times do |ele| 
      temp += s[ele+i] 
    end
    if temp == d 
      count += 1 
    end
    i += 1 
  end
  p count 
end

# p birthday([1,2,1,3,2], 3, 2) # => 2
# p birthday([1,1,1,1,1,1], 3,2) # => 0 
# p birthday([4], 4,1) # => 1 
# p birthday([], 1,1) 
# p birthday([1,2,3,4,5], 6, 1)

arr = [2, 3, 4, 4, 2, 1, 2, 5, 3, 4, 4, 3, 4,1, 3, 5, 4, 5, 3, 1, 1, 5, 4, 3, 5, 3, 5, 3, 4, 4, 2, 4, 5, 2, 3, 2, 5, 3, 4, 2, 4, 3, 3, 4, 3, 5, 2, 5, 1, 3, 1, 4, 2, 2, 4, 3, 3, 3, 3, 4, 1, 1, 4, 3, 1, 5, 2, 5, 1, 3, 5, 4, 3, 3, 1, 5, 3, 3, 3, 4, 5, 2, 26, 8]


p birthday(arr, 26, 8)
