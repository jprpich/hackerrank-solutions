def bonAppetit(bill, k, b)
  bill.delete_at(k)
  total = bill.reduce(:+) / 2
  if total >= b 
     "Bon Appetit"
  else
     b - total 
  end
end

p bonAppetit([3, 10, 2, 9,],1, 12) # => 5 
p bonAppetit([3, 10, 2, 9],1, 7) # => Bon Appetit

# bill: an array of integers representing the cost of each item ordered
# k: an integer representing the zero-based index of the item Anna doesn't eat
# b: the amount of money that Anna contributed to the bill


