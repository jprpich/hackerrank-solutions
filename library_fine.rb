def libraryFine(d1, m1, y1, d2, m2, y2)
  if y1 > y2  
    return 10000
  elsif y1 < y2 
    return 0 
  end
  if m1 > m2 
    return 500 * (m1-m2) 
  elsif m1 < m2 
    return 0 
  end
  if d1 > d2 
    return 15 * (d1-d2) 
  else 
    return 0 
  end 
end

p libraryFine(2,7,1014, 1,1,1015)

