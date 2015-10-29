# Pad an Array

# I worked on this challenge with Joshua Shin

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# Array of positive integer, integer that represents size of array, optional padding variable
# What is the output? (i.e. What should the code return?)
# Array of positives integers and strings
# What are the steps needed to solve the problem?
# Step 1, check size of array is smaller than minimum size.
# Step 2, if it's smaller than minimum size, push padding variable into array and rewrite array
# Step 3, Return array
# Step 4, for non-destructive array, check if its size is smaller than minimum value
# Step 5, if it's smaller, create a new array which includes the original values and adds additonal padding variables
# Step 6, Return array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here

  if array.size < min_size
    values_to_add = min_size - array.size

    temp_array = Array.new(values_to_add, value)

    array.concat(temp_array)

  end
  return array

end

def pad(array, min_size, value = nil) #non-destructive

  new_array = array.clone
    if array.size < min_size
      values_to_add = min_size - array.size
      temp_array = Array.new(values_to_add, value)
      new_array += temp_array
    end
  return new_array
end

# 3. Refactored Solution



# 4. Reflection