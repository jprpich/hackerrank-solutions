def countApplesAndOranges(s, t, a, b,apples,oranges)
  puts apples_in_range = apples.reduce(0) {|sum, num|
    (num+a).between?(s, t) ? sum + 1 : sum
  }
  puts oranges_in_range = oranges.reduce(0){|sum, num|
    (num+b).between?(s, t) ? sum + 1 : sum
  }
end

apples = [-2,2,1]
oranges = [5, -6]


countApplesAndOranges(7, 11, 5, 15, apples,oranges )
