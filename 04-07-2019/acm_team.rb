# Complete the acmTeam function below.
def acmTeam(topic)
  hash = Hash.new(0)
  topic.each_with_index do |sub1, idx1|
    topic.each_with_index do |sub2, idx2|
      if idx2 > idx1 
        test = comparison(sub1, sub2) 
        if test > max 
          hash[test]  
        end
      end
    end
  end

end

def comparison(str1, str2) 
  count = 0
  str1.each_char.with_index do |char, idx| 
    if char == "1" || str2[idx] == "1" 
      count += 1 
    end
  end
  count 
end

p acmTeam(["10101", "11110", "00010"])