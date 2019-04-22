def gradingStudents(grades)
  grades.map do |grade| 
    next_multiple_of_five = grade + 1
    until next_multiple_of_five % 5 == 0
      next_multiple_of_five += 1
    end   
    if grade < 38
      grade
    elsif next_multiple_of_five - grade < 3
      next_multiple_of_five
    else
      grade 
    end
  end
end

puts gradingStudents([73, 67, 38, 33])
