require 'byebug'
# Complete the appendAndDelete function below.
def appendAndDelete(s, t, k)
  i = 0
  while i < s.size
    if s[i] != t[i] 
      break 
    end
    i += 1 
  end
  first = s[i..-1].size
  second = t[i..-1].size
  result = first + second 
  if second > first 
    if s[i-second..-1] == t[i..-1]
      return "Yes"
    end  
    if k == result 
      return "Yes"
    else
      return "No" 
    end
  else 
    if result <= k 
      return "Yes" 
    else 
      return "No"
    end
  end
end

p appendAndDelete("abc", "def", 6) # => Yes 
p appendAndDelete("hackerhappy", "hackerrank", 9) # => Yes 
p appendAndDelete("aba", "aba", 7) # => Yes 
p appendAndDelete("ashley", "ash", 2) # => No 
p appendAndDelete("abcd", "abcdert", 10) # => No 
p appendAndDelete("y", "yu", 2) # => No 
p appendAndDelete("zzzzz", "zzzzzzz", 4) # => Yes 