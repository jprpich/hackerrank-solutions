def hurdleRace(k, height)
  max = height.max 
  if max - k < 0
    return 0 
  else 
    return max - k 
  end
end

