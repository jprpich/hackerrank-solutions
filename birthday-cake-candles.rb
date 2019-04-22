

def birthdayCakeCandles(ar)
  original_size = ar.clone.size
  ar.delete(ar.max)
  original_size - ar.size
end

birthdayCakeCandles [1,2,3,3]