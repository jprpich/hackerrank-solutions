# def foo(a, b, my_proc)
#     my_proc.call(a, b)
# end
#
# add = proc {|x, y| x + y}
#
# puts foo(15, 10, add)
#
#

def square_of_sum (my_array, proc_square, proc_sum)
    sum = proc_sum.call(my_array)
    proc_square.call(sum)
end

proc_square_number = proc {|num| num * num}
proc_sum_array     = proc {|array| array.inject(0){|sum,x| sum + x }}
my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)
