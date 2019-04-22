require 'byebug'
def pageCount(n, p)
  if p < n/2.0 
    p / 2 
  else
    if n % 2 == 0 && (n - p == 1)
      (n-p) / 2 + 1
    else
      (n-p) / 2
    end
  end
end



#  1 
# 2, 3
# 4, 5 
# 6 
p pageCount(6,5) # => 0 
p pageCount(2,1)