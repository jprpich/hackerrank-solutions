def skip_animals(animals, skip)
  # Your code here
    result = []
    animals.each_with_index do |animal, i|
      if i >= skip 
        result.push("#{i}:#{animal}")
      end
    end
    result
end

puts skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)