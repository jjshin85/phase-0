# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [.5] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: string value from array of strings
# Steps:
 # First, create global variable and initialize it from array passed into initialize method as argument. Then, create global variable for the number of sides and find out size of the array, which will equal the number of sides for the dice. For the roll method, create a random number generator that will return a number between the range of 0 and the size of the array minus 1 (because the index is 0 relative). The random number will equal the index number for the string array passed into the die initialize method.


# Initial Solution
=begin
class Die
  def initialize(labels)
    @labels = labels
    @sides = labels.size
    unless @sides > 0
      raise ArgumentError.new("Must have at least 1 value")
    end

  end

  def sides
    return @sides
  end

  def roll
    roll_number = Random.rand(0..@sides-1)
    return @labels[roll_number]
  end
end
=end


# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    @sides = labels.size
    unless @sides > 0
      raise ArgumentError.new("Must have at least 1 value")
    end

  end

  def sides
    return @sides
  end

  def roll
    roll_number = Random.rand(0..@sides-1)
    return @labels[roll_number]
  end
end

# Reflection
=begin
- What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  The main difference was the initialize took an array instead of an int. The size of the array equaled the number of sides, and so that part of the class is the same. Other than that, I used the random number generator for the roll method for the previous challenge to give an index number to return a value from the array of strings. It was basically the same except for the last part.
- What does this exercise teach you about making code that is easily changeable or modifiable?
  Reusable code is the goal.
- What new methods did you learn when working on this challenge, if any?
 None, I used methods I had already known.
- What concepts about classes were you able to solidify in this challenge?
  Using instance variables that are accessible within the class and to different methods.
=end