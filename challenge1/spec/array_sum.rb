def sum_array(array)
    sum = 0
    array.each do |number|
       if number.class != Integer
            sum = "Contains non numeric value"
            return sum
       else
            sum += number
       end
    end
     # p sum
     sum
 end
 
 
 def sum_two_arrays(arr1, arr2)
     sum1 = sum_array(arr1)
     sum2 = sum_array(arr2)
     sum_of_both = sum1 + sum2
     # puts sum_of_both
     sum_of_both
 end
 
 
#  puts sum_array([10, 20, -10, 5, 0])
#  puts sum_two_arrays([10, 20, -10, 5, 0], [4])