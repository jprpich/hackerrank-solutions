# Complete the equalizeArray function below.
def equalizeArray(arr)
  count = 0
  freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  max = arr.max_by { |v| freq[v] }
  return arr.size - arr.count(max)
end

p equalizeArray([3,3,2,1,3]) # => 2