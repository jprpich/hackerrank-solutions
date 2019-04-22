def findDigits(n)
  count = 0 
  string_n = n.to_s
  string_n.each_char do |char|
    if char == "0"
      next
    end
    if n % char.to_i == 0
      count += 1
    end
  end
  count  
end

p findDigits(12)
p findDigits(1012)