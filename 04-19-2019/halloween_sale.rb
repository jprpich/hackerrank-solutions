require 'byebug'
def howManyGames(p, d, m, s)
  purchased_items = 0
  money_left = s 
  current_price = p
  while money_left >= current_price
    purchased_items += 1 
    money_left -= current_price
    current_price -= d 
    if current_price <= m 
      current_price = m 
    end
  end
  purchased_items
end

p howManyGames(81, 3, 6, 80) # => 6
p howManyGames(20, 3, 6, 85) # => 7
p howManyGames(16, 2, 1, 9981) # => 9917