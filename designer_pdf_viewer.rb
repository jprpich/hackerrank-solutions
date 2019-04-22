require 'byebug'
def designerPdfViewer(h, word)
  alphabet = ("a".."z").to_a
  heights = []
  word.each_char do |char|
    idx = alphabet.index(char) 
    heights << h[idx].to_i 
  end
  max = heights.max 
  return word.length * max 
end

p designerPdfViewer(%w(1 3 1 3 1 4 1 3 2 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5), "abc") # => 9
p designerPdfViewer(%w(1 3 1 3 1 4 1 3 2 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 7), "zaba") # => 28





# h: an array of integers representing the heights of each letter
# word: a string