def breakingRecords(scores)
  lowest = scores[0]
  highest = scores[0]
  low_count = 0 
  highest_count = 0
  i = 1 
  while i < scores.size 
    if scores[i] > highest
      highest_count += 1 
      highest = scores[i]
    end 
    if scores[i] < lowest 
      low_count += 1 
      lowest = scores[i]
    end

    i += 1 
  end
  return highest_count.to_s + " " + low_count.to_s


end

# breakingRecords([3, 4, 21, 36, 10, 28, 35, 5, 24, 42]) # => 4 0 
breakingRecords([10, 5, 20, 20, 4, 5, 2, 25, 1]) # => 2 4 

