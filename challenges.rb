def compareTriplets(a, b)
    result = [0,0]
    a.each_with_index do |val, i| 
      if a[i] > b[i]
          result[0] += 1
      elsif a[i] < b[i] 
          result[1] += 1
      end
    end
    result
end


p compareTriplets([2,2,3],[2,3,1 ])