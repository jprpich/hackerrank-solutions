def countingValleys(n, s)
  valley = 0 
  sea_level = 0 
  s.each_char do |char| 
    if sea_level == 0 && char == "D" 
      valley += 1 
    end
    if char == "U" 
      sea_level += 1 
    elsif char == "D" 
      sea_level -= 1 
    end
  end
  valley
end

p countingValleys(8, "UDDDUDUU") # => 1
# n steps 
