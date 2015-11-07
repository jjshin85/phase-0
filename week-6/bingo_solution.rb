# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #match the letters b,i,n,g, and o to the numbers 1-5 and create a random number generator that gives a value from 0-4 and then that will match the letter value. And then we need to have another number generator which outputs a number from 1-100.

# Check the called column for the number called.
  #create a method that inspects the arrays with the index number 0-4 which will match the bingo letters, and then another method to check the nested array at the bingo index number to see if the elements at those index numbers contain the value.

# If the number is in the column, replace with an 'x'
  #if the method which checked the columns have the value, update the value at that element


# Display a column to the console
  # print array element with certain index number will bring the values of the nested array at that column number.

# Display the board to the console (prettily)
  #use nested iteration to print nested arrays

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  @b = 0
  @i = 1
  @n = 2
  @g = 3
  @o = 4
  def call_space
    #gives board value
    bingo_val = Random.new(0..4)
    num_val = Random.new(0...100)
    case bingo_val
    when bingo_val = @b
    when bingo_val = @i

    end
  end

  def check_board
    #check if last number called matches any values on board
  end

  def display_board
  end
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection

