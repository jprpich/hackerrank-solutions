require 'byebug'
def viralAdvertising(n)
  likes = 0
  recipients = 5
  n.times do 
    day_likes = recipients / 2
    likes += day_likes 
    recipients = day_likes * 3 
  end
  likes 
end

p viralAdvertising(3) # => 9