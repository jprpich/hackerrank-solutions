# Function description

# Complete the  function in the editor below. It must return an integer representing the absolute diagonal difference.

# diagonalDifference takes the following parameter:

# arr: an array of integers .

def diagonalDifference(arr)
  left_total = 0
  right_total = 0
  left_index = 0
  right_index = -1
  arr.each do |inner_arr|
    left_total += inner_arr[left_index]
    left_index += 1
    right_total += inner_arr[right_index]
    right_index -= 1
  end
  (left_total - right_total).abs
end

puts diagonalDifference([[11,2,4], [4,5,6], [10,8,-12]])




