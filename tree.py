class newNode:
  def __init__(self, x):
    self.x = x
    self.l = self.r = None

def largestUinquePathUtil(node, m):
  
  if (not node):
    return len(m)
  # put this node into hash
  if node.x in m:
    m[node.x] += 1
  else:
    m[node.x] = 1

  

  lhs = largestUinquePathUtil(node.l, m)
  rhs = largestUinquePathUtil(node.r, m)
    
  m[node.x] -= 1
  if m[node.x] == 0:
      del m[node.x]

  return max(lhs, rhs)

# A utility function to find
# long unique value path
def solution(node):
  if (not node):
    return 0

  # hash that store all node value
  Hash = {}

  # return max length unique value path
  return largestUinquePathUtil(node, Hash)


# Create binary tree shown
# in above figure
root = newNode(1)
root.l = newNode(2)
root.r = newNode(3)
root.r.r = newNode(3)
root.r.r.r = newNode(9)


print(solution(root))

# This code is contributed by PranchalK