def strike(str)
  "<strike>"+str+"</strike>"
end


def mask_article(str, arr)
  result = str
  arr.each do |item|
    result = result.gsub(item, strike(item))
  end
  result
end


puts mask_article("Hello World! This is crap!", ["crap","This"])
