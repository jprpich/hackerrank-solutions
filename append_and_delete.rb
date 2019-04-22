def appendAndDelete(s, t, k)
  count = 0
  i = 0 
  while i < s.size 
    if s[i] != t[i]
      count += s[i..-1].size 
      count += t[i..-1].size 
      break 
    end
    i += 1 
  end
  if count <= k 
    return "Yes" 
  else  
    return "No" 
  end
end

p appendAndDelete("abc", "def", 6) #=> Yes
p appendAndDelete("hackerhappy", "hackerrank", 9) #=> YES
p appendAndDelete("aba", "aba", 7) #=> Yes
p appendAndDelete("ashley", "ash", 2) #=> No
p appendAndDelete("y", "yu", 2) #=> No
p appendAndDelete("abcd", "abcdert",10) #=> No