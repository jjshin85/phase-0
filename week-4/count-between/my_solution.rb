# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  if (list_of_integers.size != 0) && (upper_bound >= lower_bound)
    #puts "Array size greater than 0 and upper_bound is greater than lower_bound!"
    i = 0
    nums_between = 0
    #puts "size of array: " + list_of_integers.size.to_s
    for i in 0...list_of_integers.size
      num = list_of_integers[i]
      #puts "array at index #{i} is #{num}"
      if (lower_bound <= num) && (num <= upper_bound)
        nums_between += 1
        #puts nums_between
      end
      i += 1
    end
    return nums_between
  else
    #puts "Array empty"
    return 0
  end
end

=begin
puts "test 1"
count_between([], -100, 100)

puts "test 2"
count_between([1,2,3,4,5,6,7,8,9,10], 100, -100)

puts "test 3"
count_between([1,2,3,4,5,6,7,8,9,10], 100, 100)

puts "test 4"
count_between([1,2,3,4,5,6,7,8,9,10], 0, 100)

puts "test 5"
count_between([1,1,1,1,1], 1, 1)

#cd dbc/phase-0/week-4/count-between

=end