# Complete the jumpingOnClouds function below.
def jumpingOnClouds(c)
  count = 0
  i = 0 
  while i < c.size - 1
    if c[i+2] == 0
      count += 1 
      i += 2 
    else 
      count += 1 
      i += 1 
    end 
  end
  count 
end

p jumpingOnClouds([0, 0, 1, 0, 0, 1, 0]) # => 4
p jumpingOnClouds([0, 0, 0, 0, 1, 0]) # => 3