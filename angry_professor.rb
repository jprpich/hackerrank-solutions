
def angryProfessor(k, a)
  count = 0
  a.each do |num|
    if num >= 0 
      count += 1 
    end
  end
  puts count
  if count <= k 
    return "YES"
  else
    return "NO"
  end
end


a = %w(99 -29 28 -99 89 -76 -66 84 59 76 71 -38 84 -90 -75 81 50 28 64 -58 -44 69 -77 -57 42 72 -95 65 49 -67 58 -2 63 38 -14 33 30 69 -59 -95 -13 -18 29 -92 -43 7 -13 13 96 -56 99 -69 -95 89 69 8 4 95 -14 -64 -51 10 38 -93 26 -45 -94 6 -56 -95 84 -60 82 -73 95 5 66 -63 90 90 61 -93 -1 -44 51 -88 -47 75 -56 29 -42 49 1 64 -72 -11 -42 40 59 58)

a.map! { |num| num.to_i }

p angryProfessor(52, a)