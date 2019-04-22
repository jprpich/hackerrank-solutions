def miniMaxSum(arr)

  mini_arr = arr.clone
  max_arr = arr.clone

  mini_sum = 0
  max_sum = 0

  max_arr.delete_at(max_arr.index(max_arr.min))
  max_arr.each do |num|
    max_sum += num
  end

  mini_arr.delete_at(mini_arr.index(mini_arr.max))
  mini_arr.each do |num|
    mini_sum += num
  end

  puts "#{mini_sum} #{max_sum}"
end


miniMaxSum [1,1,2,2,3]