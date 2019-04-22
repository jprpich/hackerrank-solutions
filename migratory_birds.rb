require 'byebug'
def migratoryBirds(arr)
  hash = Hash.new {|k,v| k[v] = []} 
  arr.each_with_index  do |ele, idx| 
    hash[ele] << idx  
  end
  sorted = hash.sort_by { |k, v| v.size }[-1][1][0]

end

p migratoryBirds([1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]) # => 3 
