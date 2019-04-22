def dayOfProgrammer(year)
  if year <= 1917 
    if year % 4 == 0
      return "#{12}.09.#{year}"
    else 
      return "#{13}.09.#{year}" 
    end 
  elsif year == 1918 
    return "#{26}.09.#{year}"
  else
    if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
      return "#{12}.09.#{year}"
    else
      return "#{13}.09.#{year}"
    end
  end
end

p dayOfProgrammer(2017) # => 13.09.2017
p dayOfProgrammer(2016) # => 12.09.2016
p dayOfProgrammer(2400) # => 12.09.2400

# 256th day of the year    (1700 - 2700)
# (1700 - 1917) 