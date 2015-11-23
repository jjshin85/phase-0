# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
# Check if 5 spaces in a row (horizontal, diagonal, or vertical) on a bingo board have an x to see if a it is a bingo winner.
#Step 1: check to see if a row in an array has all 'x's.
#Step 2: check to see if the same index position in different rows has an x.
#Step 3: check to see if a board has diagonal x.




# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
class BingoScorer

  def initialize(board)
    @board = board
    @doneChecking = false
    while @doneChecking == false
      checkHorizontal
      checkVertical
      checkFromTopLeft
    end
  end

  def checkHorizontal
    @board.each_with_index do |row, index|
      # array = []
      # row.each do |space|
      #   array << space
      # end
      # p "row at #{index}:"
      # p array
      if row.all? {|element| element == "x"}
        p "Horizontal bingo!"
        @doneChecking = true
      end
    end
  end

  def checkVertical
    possibleBingo = false
    column_num = nil
    @board.each_with_index do |row, row_index|
      row.each_with_index do |space, space_index|
        if space == "x"
          possibleBingo = true
          column_num = space_index
        end
      end
    end
    if possibleBingo == true
      if @board.all? {|row| row[column_num] == "x"}
        p "Vertical Bingo!"
        @doneChecking = true
      end
    end
  end


  def testAll(array)
    if array.all? {|space| space == "x"}
      return true
    else
      return false
    end
  end

  def checkFromTopLeft
    vals_to_check = []
    counter = 0
    @board.each_with_index do |row, row_index|
      vals_to_check << row[counter]
      counter += 1
    end
    p "checking from top left"
    if vals_to_check.all? {|element| element == "x"}
      p "Left to Right Diagonal Bingo!"
      @doneChecking = true
    else
      p "not a Diagonal bingo"
    end
  end

  def checkFromBottomLeft


  end
end
testArray = [[0,1,2,3,4],[0,1,2,3,4],["x","x","x","x"],[0,1,2,3,4]]
p "the 'horizontal' board is ..."
scorer1 = BingoScorer.new(horizontal)
# scorer1.checkHorizontal
p "the vertical board is ..."
scorer2 = BingoScorer.new(vertical)
# scorer2.checkVertical

p "Board: right_to_left is "
scorer3 = BingoScorer.new(right_to_left)
# scorer3.checkFromTopLeft
# scorer1.testAll([2,3,3,4,4,4,4,4])
# scorer1.testAll([4,4,4,4,4,4])
# scorer1.testAll(["x", "x", "x"])
# scorer1.testAll(["x", "x", "x", "y"])
# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:


# Reflection