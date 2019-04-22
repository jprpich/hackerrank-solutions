# Complete the climbingLeaderboard function below.
require 'byebug'
def climbingLeaderboard(scores, alice)
  result = []
  alice.each do |num|
    result << helper(scores, num)
  end
  result 
end

def helper(scores, alice) 
  i = 1 
  hash = {}
  scores.each do |score| 
    if alice >= score 
      return i 
    else 
      if !hash[score]
        i += 1 
      end
      hash[score] = i 
    end 
  end
  i  
end
# p scores([100, 100, 50, 40, 40, 20, 10])

p climbingLeaderboard([100, 100, 50, 40, 40, 20, 10], [5, 25, 50, 120]) # => [4,2,1]