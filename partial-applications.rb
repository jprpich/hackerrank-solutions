combination = -> (number) do
  -> (another_number) do
    number_factorial = (1..number).inject(:*) || 1
    another_number_factorial = (1..another_number).inject(:*) || 1
    third_factorial = (1..(number - another_number)).inject(:*) || 1
    number_factorial/(another_number_factorial*third_factorial)
  end
end


n = 4
r = 2
nCr = combination.(n)
p nCr.(r)
