def calculate_money_earned(name)
  years = 30 
  dev_skills = 7
  money_earned = 5769

  while years <= 59
    money_earned += (1153 * dev_skills)
    dev_skills += 10 
    years += 1 
  end
  puts "$#{money_earned} USD!"
end

calculate_money_earned("John Doe")




