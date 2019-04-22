# Complete the beautifulTriplets function below.
def beautifulTriplets(d, arr)
  result = 0
  arr.each do |num|
    first = num 
    second = num + d 
    third = num + d * 2 
    if arr.include?(first) && arr.include?(second) && arr.include?(third) 
      result += 1 
    end
  end
  result 
end

p beautifulTriplets(1, [2,2,3,4,5]) # => 3
p beautifulTriplets(3, [1, 2, 4, 5, 7, 8, 10]) # => 3