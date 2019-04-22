def cutTheSticks(arr)
  result = [arr.size] 
  until arr.size < 2 || arr.all? { |ele| ele == arr[0] }
    arr = helper(arr) 
    result << arr.size
  end
  result 
end

def helper(arr) 
  min = arr.min 
  arr = arr.select! {|num| num > min }
  arr.map! {|num| num - min}
end


p cutTheSticks([1, 13, 3, 8, 14, 9, 4, 4]) # => 8 7 6 4 3 2 1
