
def permutationEquation(p)

  result = Array.new(p.length)
  idx = 0
  while idx < p.length
      result[p[p[idx]-1]-1] = idx+1
      idx+=1
  end
  return result

end

# p permutationEquation([2,3,1])
p permutationEquation([4, 3, 5, 1, 2])