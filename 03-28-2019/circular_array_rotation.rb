def circularArrayRotation(a, k, queries)
  k.times do 
    a.unshift(a.pop) 
  end
  result = []
  queries.each do |ele| 
    result << a[ele] 
  end
  result 
end

p circularArrayRotation([1,2,3], 2, [0, 1, 2])