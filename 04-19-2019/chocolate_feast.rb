# Complete the chocolateFeast function below.
require 'byebug'
def chocolateFeast(n, c, m)
  total_bars = n / c
  wrappers = total_bars 
  while wrappers >= m 
    left_over_wrappers = wrappers % m 
    wrappers /= m 
    total_bars += wrappers 
    wrappers += left_over_wrappers 
  end
  total_bars
end

p chocolateFeast(15,3,2) # => 9
p chocolateFeast(10, 2, 5) # => 6
p chocolateFeast(12, 4, 4) # => 3
p chocolateFeast(6, 2, 2) # => 5 