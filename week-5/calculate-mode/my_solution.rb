# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Syema]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# An array of numbers or strings
# What is the output? (i.e. What should the code return?)
# An array of the most frequent values
# What are the steps needed to solve the problem?
# Inspect the array and check for repeating values. We can do this by iterating through the array and creating hash key and values. If the key repeats it'll add to the value. Then return the most repeated values.


# 1. Initial Solution
=begin
def mode(array)

  values_hash = Hash.new

  array.each { |num|
    if values_hash.has_key?(num)
      values_hash[num] += 1
    else
      values_hash[num] = 1
    end
  }

  hash_array = values_hash.sort_by { |key, value| value }
  hash_array.reverse!
  mode_array_1 = hash_array[0]
  mode_num = mode_array_1[1]

  hash_array.delete_if { |i| i[1] < mode_num}

  mode_array = []
  hash_array.each do |row|
    mode_array.push(row[0])
  end

  mode_array.sort!

  return mode_array

end
=end

# 3. Refactored Solution

def mode(array)

  values_hash = Hash.new

  array.each { |num|
    if values_hash.has_key?(num)
      values_hash[num] += 1
    else
      values_hash[num] = 1
    end
  }

  hash_array = values_hash.sort_by { |key, value| value }
  hash_array.reverse!
  mode_array_1 = hash_array[0]
  mode_num = mode_array_1[1]

  hash_array.delete_if { |i| i[1] < mode_num}

  mode_array = []

  hash_array.each do |row|
    mode_array.push(row[0])
  end

  mode_array.sort!

  return mode_array

end


# 4. Reflection
=begin
- Which data structure did you and your pair decide to implement and why?
We used a hash to store the number as a key and its frequency as a value. We used arrays to organize the hash keys and values.
- Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
No, about equally successful.
- What issues/successes did you run into when translating your pseudocode to code?
Iterating and sorting through the array we used to store the hashes was more difficult than expected. It was hard to figure out the proper syntax necessary to pull out specific elements from nested arrays.
- What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used '.delete_if' to get rid of values that weren't the mode. It took a while to get the syntax right because we were iterating through nested arrays and we wanted to look at the second value of the inner array.

=end