# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Syema]

# I spent [] hours on this challenge.

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

  p "The hash array is #{hash_array}"
  p "the mode array is #{mode_array}"
  return mode_array

end

#mode([1,2,3,3,3,2,1,1,1,3,3,2,1])

# mode([4, 4, 5, 5, 6, 6, 6, 7, 5])
# 3. Refactored Solution




# 4. Reflection