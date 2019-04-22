# Complete the acmTeam function below.
def acmTeam(topic)
  hash = Hash.new(0)
  topic.each_with_index do |num1, idx1| 
    topic.each_with_index do |num2, idx2|
      if idx2 > idx1 
        count = join_bits(num1, num2) 
        hash[count] += 1
      end
    end
  end
  hash.sort_by {|k,v| k}[-1]
end


def join_bits(str1, str2) 
  str = (str1.to_i(2) | str2.to_i(2)).to_s(2)
  str.count("1")
end



p acmTeam(["10101", "11110", "00010"])
p acmTeam(["10101", "11100", "11010", "00101"])