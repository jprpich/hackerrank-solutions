def sockMerchant(n, ar)
  result = 0
  hash = Hash.new(0)
  ar.each do |el| 
    hash[el]+= 1 
    if hash[el] > 1 && hash[el] % 2 == 0 
      result += 1 
    end
  end
  result 
end

p sockMerchant(9, [10, 20, 20, 10, 10, 30, 50, 10, 20]) # => 3 
p sockMerchant(10, [1, 1, 3, 1, 2, 1, 3, 3, 3, 3]) # => 4 

# Given an array of integers representing the color of each sock