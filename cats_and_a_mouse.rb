def catAndMouse(x, y, z)
  distance_a = (x - z).abs 
  distance_b = (y - z).abs 
  if distance_a > distance_b
    return "Cat B" 
  elsif distance_a < distance_b
    return "Cat A" 
  else
    return "Mouse C" 
  end
end

catAndMouse(2,[1,2,3],[1,3,2]) # => Cat B Mouse C
