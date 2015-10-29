# Pad an Array

# I worked on this challenge with Sasha Tailor

# I spent [1] hours on this challenge.

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
# def pad!(array, min_size, value = nil) #destructive
#   # Your code here

#   if array.size < min_size

#     values_to_add = min_size - array.size
#     temp_array = Array.new(values_to_add, value)
#     array.concat(temp_array)

#   end

#   return array

# end

# def pad(array, min_size, value = nil) #non-destructive

#   new_array = array.clone

#     if array.size < min_size

#       values_to_add = min_size - array.size
#       temp_array = Array.new(values_to_add, value)
#       new_array += temp_array

#     end

#   return new_array

# end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive

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

# 4. Reflection

=begin
- Were you successful in breaking the problem down into small steps?
Yes, we basically followed our pseudocode in our final method.
- Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Yes, it was failry easy to translate into code. The only difficulty was our understanding of destructive and non-destructive in regards to cloning the initial array. We didn't know that if we defined a new array with the old one (i.e. 'new_array = old_array') that they would still have the same obect id.
- Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  We got back an error that the ids were the same for our non-destructive method. We solved it by cloning the initial array.
- When you refactored, did you find any existing methods in Ruby to clean up your code?
No, our code was pretty simple from our initial efforts.
- How readable is your solution? Did you and your pair choose descriptive variable names?
I think it's very readable and easy to understand. At first I thought about trying to do everything in 'long-hand', so to speak, using an iterator rather than using Ruby methods like 'concat', but I realized that these methods are much more readable.
- What is the difference between destructive and non-destructive methods in your own words?
Destructive methods keep the object id while altering the initial data, whereas non-destructive methods create new objects (which would in turn have a new object id), which keeps the original data unaltered.

=end