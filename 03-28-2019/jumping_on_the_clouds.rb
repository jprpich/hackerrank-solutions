def jumpingOnClouds(c, k)
  e = 100
  i = 0 
  while c[i] 
    if c[i] == 0 
      e -= 1 
    elsif c[i] == 1 
      e -= 3 
    end
    i += k 
  end
  e
end

p jumpingOnClouds([0,0,1,0], 2) 