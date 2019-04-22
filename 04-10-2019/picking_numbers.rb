
def pickingNumbers(a)
  subs = []
  a.each do |num| 
    subs << helper(a,num)
  end
  subs.max
end

def helper(arr, num) 
  arr.select {|el| el >= num && el <= num + 1}.size
end



p pickingNumbers([4, 6, 5, 3, 3, 1]) # => 3
p pickingNumbers([1, 2, 2, 3, 1, 2]) # => 5 
