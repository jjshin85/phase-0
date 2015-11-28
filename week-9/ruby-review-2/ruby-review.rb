# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# Step 1: create method fizzbuzz that takes a number as input and will return 'fizz' if the number is a modulo of 3, 'buzz' if the number is a modulo of 5, and 'fizzbuzz' if it's a modulo of both.
#Step 2: create a method that takes an array as input, and checks each value of the array for 'fizzbuzz' using the method from step 1.


# Initial Solution
=begin
def super_fizzbuzz(array)
  array.map! do |x|
    fizzbuzz(x)
  end
  return array
end

def fizzbuzz(int)

  if int % 3 == 0 && int % 5 == 0
    int = "fizzbuzz"
    p int
  elsif int % 5 == 0
    int = "buzz"
    p int
  elsif int % 3 == 0
    int = "fizz"
    p int
  else
    return int
  end

end
=end
p super_fizzbuzz([3, 5, 2, 4, 30, 6, 15])

# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |x|
    fizzbuzz(x)
  end
  return array
end

def fizzbuzz(int)
  if int % 3 == 0 && int % 5 == 0
    int = "fizzbuzz"
  elsif int % 5 == 0
    int = "buzz"
  elsif int % 3 == 0
    int = "fizz"
  else
    return int
  end
end

# Reflection
=begin
- What concepts did you review in this challenge?
  Flow control, to make sure that fizzbuzz worked correctly (You could miss 'fizzbuzz' if you define the code that returns 'fizz' or 'buzz' first). Also, reusability, because we separated the method of fizzbuzz and super_fizzbuzz.

- What is still confusing to you about Ruby?
  This challenge was fairly straightforward. The thing I had to keep in mind was that the '.each' method is not destructive, so to modify the array we had to use the '.map!' method.

- What are you going to study to get more prepared for Phase 1?
  Probably best practices for refactoring and naming conventions. Switching back and forth from javascript to ruby has caused some confusion about this for me.
=end