def climbingLeaderboard(scores, alice)
  result = []
  alice.each do |alice_score|
    scores.each do |score|
      count = 1
      if alice_score >= score 
        result << count 
        break
      end
      count += 1 
    end
  end
  result 
end

p climbingLeaderboard([100, 100, 50, 40, 40, 20, 10], [5, 25, 50, 120]) # =>