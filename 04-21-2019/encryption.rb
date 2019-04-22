def encryption(s)
  s = s.gsub(/\s+/, "")
  len = s.length
  sqrt = Math.sqrt(len)
  floor = sqrt.floor 
  ceil = sqrt.ceil 
  floor += 1 if floor * ceil < len 
  rows = s.scan(/.{1,#{ceil}}/)
  encrypted = ""
  i = 0 
  while i < ceil 
    rows.each do |row| 
      encrypted += row[i] if row[i]
    end
    encrypted += " " if i < ceil - 1
    i += 1 
  end
  encrypted
end

p encryption("haveaniceday") # => "hae and via ecy"
p encryption("feedthedog") # => "fto ehg ee dd"
p encryption("chillout") # => "clu hlt io"