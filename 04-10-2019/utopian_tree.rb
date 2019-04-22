# Complete the utopianTree function below.
def utopianTree(n)
  result = [1]
  odd = true 
  n.times do 
    if odd 
      result << result[-1] * 2 
      odd = false 
    else
      result << result[-1] + 1 
      odd = true 
    end
  end
  result[-1]
end

p utopianTree(0) # => 1
p utopianTree(1) # => 2 
p utopianTree(4) # => 7