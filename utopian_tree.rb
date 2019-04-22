# Complete the utopianTree function below.
def utopianTree(n)
  n.each do |ele| 
    puts helper(ele) 
  end
end

def helper(n)
  result = [1]
  n.times do |i|
    if i % 2 == 0
      result << result[-1] * 2 
    else
      result <<  result[-1] + 1 
    end
  end
  return result[-1]
end

utopianTree([14, 13, 12, 11, 15])