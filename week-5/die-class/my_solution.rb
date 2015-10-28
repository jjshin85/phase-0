# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [.5] hours on this challenge.

# 0. Pseudocode

# Input:
# Integers (the number of sides a die should have)
# Output:
# integer (the result of the roll of the die)
# Steps:
# 1. Create and define the die class object
# 2. Give it the characteristic of having a certain amount of sides, taking in that number as an argument
# 3. Create method which returns a random number


# 1. Initial Solution
=begin
class Die
  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("Must have at least 1 side")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    Random.rand(1..@sides)
  end
end
=end


# 3. Refactored Solution

class Die
  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("Must have at least 1 side")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    Random.rand(1..@sides)
  end
end

# 4. Reflection

=begin
- What is an ArgumentError and why would you use one?
  An ArgumentError is a 'catch/throw' block that checks for an error with the input the initialize method takes as an argument. It's a good way to output a message of what's wrong, and also it will keep the app from crashing.

- What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  I had already known about Random number generators and the rand method. Aside from that, it was the first time I had used 'raise' for ArgumentErrors.

- What is a Ruby class?
  A class is itself a ruby object, and it is used as a blueprint to instantiate instances of objects with the properties as defined by the class.
- Why would you use a Ruby class?
  When thinking of data structures and what kind of data we want to work with, defining and using classes helps define the data we'll work with. Also, if we need to repeats steps and processes and input different variables, creating classes are a good way to hold that data.
- What is the difference between a local variable and an instance variable?
  A local variable is a variable defined within a method and is only accessible within the scope of a method. An instance variable is an instantiated variable and can be accessed by other methods.
- Where can an instance variable be used?
  Outside of the method it was generated with and it can be used by other methods within the same class of data object.


=end