def kaprekarNumbers(p, q)
  result = ""
  (p..q).each do |num| 
    if is_kaprekar(num) 
      result += (num.to_s + " ")
    end
  end
  if result = "" 
    puts "INVALID RANGE"
  else
    puts result.strip 
  end
end


def is_kaprekar(num) 
  test = (num ** 2).to_s 
  result = 0 
  mid_point = test.size / 2 
  first_half = test[0...mid_point]
  second_half = test[mid_point..-1] 
  result = first_half.to_i + second_half.to_i 
  num == result 
end

p kaprekarNumbers(1,100) # => "1 9 45 55 99"