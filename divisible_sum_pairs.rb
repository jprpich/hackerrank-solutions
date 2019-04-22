def divisibleSumPairs(n, k, ar)
  count = 0 
  ar.each_with_index do |el1, idx1|
    ar.each_with_index do |el2, idx2|
      if idx2 > idx1 
        if (ar[idx1] + ar[idx2]) % k == 0  
          count += 1 
        end
      end
    end
  end
  count 
end

p divisibleSumPairs(6,3,[1,3,2,6,1,2])