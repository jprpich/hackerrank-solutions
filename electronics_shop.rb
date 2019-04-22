def getMoneySpent(keyboards, drives, b)
  result = 0
  keyboards.each do |keyboard|
    drives.each do |drive|
      temp = keyboard + drive 
      if temp <= b && temp > result 
        result = temp 
      end
    end
  end
  if result == 0 
    return -1 
  else
    return result 
  end
end

#  If she doesn't have enough money to both a keyboard and a USB drive, print -1 
# b = 60 to spend 
# keyboards = [40, 50, 60]
# drives = [5,8,12]

getMoneySpent([40, 50, 60],[5,8,12],60 ) # => 58
getMoneySpent([10,2,3], [3,1]) # =>