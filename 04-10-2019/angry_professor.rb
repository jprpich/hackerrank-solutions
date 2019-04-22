def angryProfessor(k,a)
  on_time = 0
  a.each do |el|
    if el <= 0 
      on_time += 1 
    end
  end
  if on_time >= k 
    return "NO" 
  else
    return "YES" 
  end
end

p angryProfessor(3, [-1, -3, 4, 2])