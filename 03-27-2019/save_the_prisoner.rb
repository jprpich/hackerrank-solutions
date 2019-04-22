def saveThePrisoner(prisoners, sweets, starting_chair)
  test = starting_chair -1 + sweets % prisoners
  if test == 0
    puts prisoners
  else
    puts test
  end
end


p saveThePrisoner(5,2,1) # => 2
p saveThePrisoner(5,2,2) # => 3
p saveThePrisoner(4,6,2) # => 3
p saveThePrisoner(7,19,2) # => 6
p saveThePrisoner(3, 7, 3,) # => 3
p saveThePrisoner(5, 278162896, 2) # => 2
p saveThePrisoner(6, 87144204, 1) # => 6