def taumBday(b, w, bc, wc, z)
  if bc > (wc + z)
    w_cost = (w + b) * wc 
    b_cost = b * z 
    return w_cost + b_cost 
  elsif wc > (bc + z) 
    b_cost = (w + b) * bc 
    w_cost = w * z 
    return b_cost + w_cost 
  else
    return b * bc + w * wc 
  end
end


p taumBday(10,10,1,1,1) # => 20
p taumBday(5,9,2,3,4) # => 37
p taumBday(3,6,9,1,1) # => 12
p taumBday(7,7,4,2,1) # => 35
p taumBday(3,3,1,9,2) # => 12