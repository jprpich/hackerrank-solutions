require 'set'
def solution(ranks)
  set = Set.new 
  ranks.each do |rank| 
    set.add(rank) 
  end
  result = 0
  ranks.each do |rank| 
    if set.include?(rank+1) 
      result += 1
    end
  end
  result 
end

p solution([3,4,3,0,2,2,3,0,0]) #=> 5