def is_upper?(c)
  /[[:upper:]]/.match(c)
end

def letter?(lookAhead)
  lookAhead =~ /[[:alpha:]]/
end

def rot13(secret_messages)
  new_messages = secret_messages.map { |message|
    message.chars.map { |ch| 
      if letter?(ch)  
        if is_upper?(ch)
          13.times { 
            ch = ch.next
          }
          if ch.size > 1
            ch[1].upcase
          else
            ch.upcase
          end
        else
          13.times { 
            ch = ch.next
          }
          if ch.size > 1
            ch[1]
          else
            ch
          end
        end
      else
        ch
      end
    }
  }
  new_messages.map { |message|
    message.join("")
  }
end

puts rot13(["Why did the chicken cross the road?", "Gb trg gb gur bgure fvqr!"])
