def appendAndDelete(s, t, k)
  test_idx = s.size
  s.each_char.with_index do |char, idx|
    if s[idx] != t[idx]
      test_idx = idx
      break
    end
  end
  test_idx
  s_start = s[test_idx..-1].size
  t_start = t[test_idx..-1].size
  if k < s_start + t_start
    return "No" 
  else
    return "Yes" 
  end
end



p appendAndDelete("abc", "def", 6) # => Yes 
appendAndDelete("hackerhappy", "hackerrank", 9) # => Yes
appendAndDelete("aba", "aba", 7) # => Yes
p appendAndDelete("ashley", "ash", 2) # => No
p appendAndDelete("abc", "def", 5) # => No

p appendAndDelete("zzzzz", "zzzzzzz", 4)