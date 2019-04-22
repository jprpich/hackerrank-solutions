def solution(n)
  if n % 2 == 0 
    result = []
    (1..n/2).each do |num|
      result << num 
      result << -num
    end
    return result 
  else
    result = []
    (1..n/2).each do |num|
      result << num 
      result << -num
    end
    return result.push(0)
  end
end

nums =  solution(100)
p nums.reduce(:+)