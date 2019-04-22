# puts "   #"
# puts "  ##"
# puts " ###"
# puts "####"



def staircase(n)
  i = n
  n.times do
    i-=1 
    puts " "*i+"#"*(n-i)
  end
end

staircase(43)