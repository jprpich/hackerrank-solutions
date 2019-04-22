
require 'byebug'
def formingMagicSquare(s)
  result = 0
  hash = Hash.new(0)
  s.each do |el| 
    el.each do |inner|
      hash[inner] += 1
    end
  end

  missing = []
  (1..9).each do |num|
    if hash[num] == 0
      missing << num 
    end
  end

  s.each do |el| 
    el.each do |inner|
      if hash[inner] && hash[inner] > 1 
        missing.each do |num|
          test = el 
          idx = el.index(inner) 
          test[idx] = num 
          if test.reduce(:+) == 15 
            result += 1 
          end
        end 
      end
    end
  end
  result 
end

p formingMagicSquare([[4,9,2],[3,5,7],[8,1,5]]) # => 1
# formingMagicSquare([[4,8,2],[4,5,7],[6,1,6]]) # => 4 

