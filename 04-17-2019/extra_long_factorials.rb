def extraLongFactorials(n)
  if n == 0
    return 1 
  end    
  result = 1
  (1..n).each do |num|
    result *= num 
  end
  result 
end

p extraLongFactorials(25) # => 15511210043330985984000000