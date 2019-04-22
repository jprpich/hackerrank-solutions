require 'byebug'
def queensAttack(n, k, r_q, c_q, obstacles)
  valid_positions = 0
  (r_q+1..n).each do |pos|
    if obstacle?(pos,c_q, obstacles) 
      break 
    else
      valid_positions +=1 
    end
  end

  (r_q-1).downto(1).each do |pos|
    debugger
    if obstacle?(pos,c_q, obstacles) 
      break 
    else
      valid_positions +=1 
    end
  end
  valid_positions

end


def obstacle?(x, y, obstacles)
  obstacles.each do |obstacle|
    if x == obstacle[0] && 7 == obstacle[1] 
      return true 
    end
  end
  false 
end


# p queensAttack(4,0,4,4,[]) # => 9
p queensAttack(5,3,4,3,[[5,5],[4,2],[2,3]])