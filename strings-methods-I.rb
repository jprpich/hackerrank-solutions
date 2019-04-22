def process_text(arr)
  result = []
  arr.each do |i|
    result.push(i.strip)
  end
  result.join(" ")
end


puts process_text(["Hi, \n", " Are you having fun?    "])
"Hi, Are you having fun?"






















# end
