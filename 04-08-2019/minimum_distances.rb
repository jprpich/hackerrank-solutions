# Complete the minimumDistances function below.
def minimumDistances(a)
  count = Hash.new { |h, k| h[k] = [] }
  a.each_with_index do |num, idx|
    count[num] << idx 
  end
  count = count.select {|k, v| v.size > 1}
  if count == {} 
    return - 1 
  end
  min = Float::INFINITY 
  count.each do |k, v| 
    if v[1] - v[0] < min 
      min = v[1] - v[0]
    end
  end
  min 
end

p minimumDistances([3,2,1,2,3]) # => 
p minimumDistances([7, 1, 3, 4, 1, 7]) # => 3 
p minimumDistances([1, 2, 3, 4, 10]) # => -1