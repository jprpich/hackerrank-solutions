# Complete the biggerIsGreater function below.
def biggerIsGreater(w)
  i = w.length - 1 
  while i >= 1 
    last = w[i]
     j = i - 1
     while j >= 0 
      next_letter = w[j]
      if last > next_letter 
        w[i] = next_letter 
        w[j] = last 
        return w[0..j] +sort_str(w[j+1..-1]) 
        
      end
      j -=1 
     end
     i -= 1
  end
  return "no answer"
end

def sort_str(str) 
  str.chars.sort.join
end


p biggerIsGreater("ocsmerkgidvddsazqxjbqlrrxcotrnfvtnlutlfcafdlwiismslaytqdbvlmcpapfbmzxmftrkkqvkpflxpezzapllerxyzlcf") == "ocsmerkgidvddsazqxjbqlrrxcotrnfvtnlutlfcafdlwiismslaytqdbvlmcpapfbmzxmftrkkqvkpflxpezzapllerxyzlfc"
p biggerIsGreater("m  ")