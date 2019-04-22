def take(arr,num)
  arr.shift(num)
  arr
end


p take([1,2,3], 1)
#[2, 3]
p take([1,2,3], 2)
#[3]
