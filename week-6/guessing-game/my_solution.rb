# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integers
# Output: Strings
# Steps:
# Create a class whose initializer takes an int as an argument and initializes a instance variable 'answer' with that argument. The initializer will also create a instance variable boolean called 'solved' and set it to false. Then create a method called 'guess' which takes an int as an argument. If the guess is lower than the instance variable 'answer', it returns the symbol :low and sets 'solved' to false, if it's higher, it returns the symbol :high and sets 'solved' to false, and if it's correct it returns the symbol :correct and sets 'solved' to true. Then create a method called 'solved?' which returns the value of the variable 'solved'.


# Initial Solution
=begin
class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if guess < @answer
      @solved = false
      return :low
    elsif guess > @answer
      @solved = false
      return :high
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    if @solved == true
      return true
    else
      return false
    end
  end

end
=end
# Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if guess < @answer
      @solved = false
      return :low
    elsif guess > @answer
      @solved = false
      return :high
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    if @solved == true
      return true
    else
      return false
    end
  end

end

# Reflection
=begin
- How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

  They're like the blueprint that determines the properties and characteristics of an object. Writing a class is like designing a car, designing how it'll look, what it can do, and what features it'll have. Instantiating it is like creating one on the assembly line, deciding what color it will be, if it'll have power-steering, anti-lock breaks, that kind of thing.

- When should you use instance variables? What do they do for you?

  You should use instance variables when you want the value of a variable to be accessible within the entire class and to different methods of the class.

- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

  Flow control is basically controlling the order of operations, how the structure branches out and which branch the program will go to. This challenge was relatively easy, it didn't involve a lot of if/else branching that I had to keep track of, so it wasn't difficult to keep track of things.

- Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  Symbols are singletons, meaning there's only ever one instance of it at one time. To be honest, I didn't really see the benefit of using a symbol here. I could see the benefit of using it as a 'key' in a hash, or if the value of the symbol were constantly updated and you wanted to make sure you only instantiated one.

=end