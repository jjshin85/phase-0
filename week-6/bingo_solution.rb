# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create hash that matches the letters in 'bingo' to the numbers 0-4. Next, create random number generator that return a number from 0-4, which is used to find the letter from the hash. And then create another number generator which outputs a number from 1-100. The number and the letter will be the bingo call-space.

# Check the called column for the number called.
  #create a method that will iterate through each row of the array and then check the specified 'bingo' column index position using the output from the call_space method. If the number is in the column, replace with an 'x'.

# Display a column to the console
  # Iterate through the main array and only print the specified element in the nested array.

# Display the board to the console (prettily)
  #use a loop to print each row (which would be each element of the main array) on a new line

# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_hash = {"b" => 0, "i" => 1, "n" => 2, "g" => 3, "0" => 4}
  end



  def call_space
    #gives board value
    @letter_position = @bingo_hash.key(Random.rand(0..4))
    @num_val = Random.rand(0..100)
  end

  def check_board
    #check if last number called matches any values on board
    for i in 0..4
      if @bingo_board[i][@bingo_hash[@letter_position]] == @num_val
        @bingo_board[i][@bingo_hash[@letter_position]] = "X"
        i += 1
      else
        i += 1
      end
    end
  end

  def display_board
    for i in 0...@bingo_board.size
      p @bingo_board[i]
    end
  end

  def display_column
    p "For column #{@letter_position}, the values are:"
    for i in 0...@bingo_board.size
      p @bingo_board[i][@bingo_hash[@letter_position]]
    end
  end
end
=end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_hash = {"b" => 0, "i" => 1, "n" => 2, "g" => 3, "0" => 4}
  end



  def call_space
    #gives board value
    @letter_position = @bingo_hash.key(Random.rand(0..4))
    @num_val = Random.rand(0..100)
  end

  def check_board
    #check if last number called matches any values on board
    for i in 0..4
      if @bingo_board[i][@bingo_hash[@letter_position]] == @num_val
        @bingo_board[i][@bingo_hash[@letter_position]] = "X"
        i += 1
      else
        i += 1
      end
    end
  end

  def display_board
    @bingo_board.each { |element|
      p element
    }
  end

  def display_column
    p "For column #{@letter_position}, the values are:"
    @bingo_board.each { |element|
      p element[@bingo_hash[@letter_position]]
    }
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call_space
new_game.check_board
new_game.display_column
new_game.display_board

#Reflection

=begin
- How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  It was difficult explaining everything in everyday langauge while still being specific. I knew what I had to do, but it's hard to explain how you're going to find the index number of an inner-array. As far as my style is concered, I try to talk about things generally without necessarily mentioning explicitly what methods I'll use, explaining more what should actually happen than the specific methods or procedures taken.

- What are the benefits of using a class for this challenge?
  We can use instance variables so different methods can have access to them.

- How can you access coordinates in a nested array?
  It's actually very easy. You add another bracket and index number for the nested element. For example 'array[0][1]' in element at index 0 in the main array, and then at index 1 in the nested array.

- What methods did you use to access and modify the array?
  I didn't use any special methods, I just iterated through to look for values at specific column indeces and redefined the values explicityly, using those indeces.

- Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  I used 'hash.key(value)' to use the value of a hash to look up its key. It was great for switching between the letters from bingo and their corresponding column number.

- How did you determine what should be an instance variable versus a local variable?
  It was based on what variables needed to be accessed by more than one method.

- What do you feel is most improved in your refactored solution?
  I decided to use a hash instead of multiple arrays to store the bingo letters and column index values. I also changed the for loops to each enumerators because I think it's more easily readable.

=end