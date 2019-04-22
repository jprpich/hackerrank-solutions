# Enter your code here. Read input from STDIN. Print output to STDOUT

input = gets.to_i

def is_palindrome?(n)
  n.to_s == n.to_s.reverse
end


def is_prime?(n)
  2.upto(n-1).each do |x|
    return false if n % x == 0
  end
  true
end

# alogorithm
power_array = -> (array_size) do
  2.upto(Float::INFINITY).lazy.select { |x|
    if is_prime?(x) && is_palindrome?(x)
      x
    end
   }.first(array_size)
end

p power_array.(input)
