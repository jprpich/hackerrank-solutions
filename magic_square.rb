def formingMagicSquare(s)
  flattened = s.flatten
  missing_number = find_missing_number(flattened)
  duplicate = find_dup(flattened) 
 
end




def find_missing_number(arr) 
  (1..9).each do |num|
    if !arr.include?(num)
      return num 
    end
  end
  nil
end


def find_dup(arr) 
  nums = [] 
  arr.each do |num| 
    if nums.include?(num) 
      return num 
    end
    nums << num 
  end
  nil 
end

p formingMagicSquare([[4,9,2],[3,5,7],[8,1,5]]) # => 1
# formingMagicSquare([4,8,2],[4,5,7], [6,1,6]) # => 4

# magic constant = 15