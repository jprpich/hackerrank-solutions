# Complete the repeatedString function below.
def repeatedString(s, n)
  count = s.count("a") 
  len = s.size 
  times = n / len
  remainder = n % len 
  result = count * times  
  add_result = s[0...remainder].count("a") 
  result + add_result 
end





p repeatedString("a", 1000000000000) # => 4
