# Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.

def timeConversion(s)
    if s[1] == "2" && s[-2] == "A"
      s.slice!(0..2)
      s.slice!(-2..-1)
      s.prepend("00:")
      puts s
    elsif s[0] == "1" && s[1] == "2" && s[-2] == "P"
      s.slice!(-2..-1)
      puts s
    elsif s[-2] == "P"
      num = s.gsub(/[^0-9a-z ]/i, '').to_i + 120000
      puts num.to_s.scan(/.{2}|.+/).join(":")
    else 
      s.slice!(-2..-1)
      puts s
    end
end


timeConversion("12:00:00PM")
