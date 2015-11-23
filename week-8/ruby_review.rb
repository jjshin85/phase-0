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
# class BingoScorer

#   def initialize(board)
#     @board = board
#     @doneChecking = false
#     while @doneChecking != true
#       checkHorizontal
#       if @doneChecking == true then break end
#       checkVertical
#       if @doneChecking == true then break end
#       checkFromTopLeft
#       if @doneChecking == true then break end
#       checkFromBottomLeft
#       @doneChecking = true
#     end
#   end

#   def checkHorizontal
#     p "checking horizontal"
#     @board.each_with_index do |row, index|
#       if row.all? {|element| element == "x"}
#         p "Horizontal bingo!"
#         @doneChecking = true
#       end
#     end
#   end

#   def checkVertical
#     p "checking vertical"
#     possibleBingo = false
#     column_num = nil
#     @board.each_with_index do |row, row_index|
#       row.each_with_index do |space, space_index|
#         if space == "x"
#           possibleBingo = true
#           column_num = space_index
#         end
#       end
#     end
#     if possibleBingo == true
#       if @board.all? {|row| row[column_num] == "x"}
#         p "Vertical Bingo!"
#         @doneChecking = true
#       end
#     end
#   end

#   def checkFromTopLeft
#     p "checking from top left"
#     vals_to_check = []
#     counter = 0
#     @board.each_with_index do |row, row_index|
#       vals_to_check << row[counter]
#       counter += 1
#     end
#     if vals_to_check.all? {|element| element == "x"}
#       p "Left top to bottom right Bingo!"
#       @doneChecking = true
#     end
#   end

#   def checkFromBottomLeft
#     p "checking from bottom left"
#     vals_to_check = []
#     counter = 4
#     @board.each do |row|
#       vals_to_check << row[counter]
#       counter -= 1
#     end
#     if vals_to_check.all? {|element| element == "x"}
#       p "Left bottom to top right Bingo!"
#     end
#   end

# end

# p "the 'horizontal' board is ..."
# scorer1 = BingoScorer.new(horizontal)
# # scorer1.checkHorizontal
# p "the vertical board is ..."
# scorer2 = BingoScorer.new(vertical)
# # scorer2.checkVertical

# p "Board: right_to_left is "
# scorer3 = BingoScorer.new(right_to_left)

# p "Board right_to_left is "
# scorer4 = BingoScorer.new(left_to_right)

# Refactored Solution

class BingoScorer

  def initialize(board)
    @board = board
    @doneChecking = false
    while @doneChecking != true
      #adding if statements to break if there is a 'bingo'
      checkHorizontal
      if @doneChecking == true then break end
      checkVertical
      if @doneChecking == true then break end
      checkFromTopLeft
      if @doneChecking == true then break end
      checkFromBottomLeft
      @doneChecking = true
    end
  end

  def checkHorizontal
    @board.each do |row|
      if row.all? {|element| element == "x"}
        p "Bingo!"
        @doneChecking = true
      end
    end
  end

  def checkVertical
    possibleBingo = false
    column_num = nil
    @board.each do |row|
      row.each_with_index do |space, space_index|
        if space == "x"
          #if there is an 'x' in a column, it saves the column index
          possibleBingo = true
          column_num = space_index
        end
      end
    end
    if possibleBingo == true
      #check each row at the same column index number
      if @board.all? {|row| row[column_num] == "x"}
        p "Bingo!"
        @doneChecking = true
      end
    end
  end

  def checkFromTopLeft
    vals_to_check = []
    counter = 0
    @board.each_with_index do |row, row_index|
      #adding the values in the top left to bottom right diagonal spaces to an array
      vals_to_check << row[counter]
      counter += 1
    end
    if vals_to_check.all? {|element| element == "x"}
      p "Bingo!"
      @doneChecking = true
    end
  end

  def checkFromBottomLeft
    vals_to_check = []
    counter = 4
    @board.each do |row|
      #adding the values from the bottom left to top right diagonal spaces to an array
      vals_to_check << row[counter]
      counter -= 1
    end
    if vals_to_check.all? {|element| element == "x"}
      p "Bingo!"
    end
  end

end




# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
p "And for the 'horizontal' board..."
scorer1 = BingoScorer.new(horizontal)

p "And for 'vertical' board ..."
scorer2 = BingoScorer.new(vertical)

p "And for the 'right_to_left' board... "
scorer3 = BingoScorer.new(right_to_left)

p "And for the 'left_to_right' board... "
scorer4 = BingoScorer.new(left_to_right)

# Reflection
=begin
- What concepts did you review or learn in this challenge?
  This helped my understanding of iteration and also refactoring. I really tried to get rid of unnecessary steps. I'm sure I have a few extra variables, but this was the best I could do for now.

- What is still confusing to you about Ruby?
  I'm still learning about all the different methods that are at my disposal. I just learned about the '.all?'' method, which I'm sure will come in handy down the line.

- What are you going to study to get more prepared for Phase 1?
  The different methods at my disposal and I'll try to refactor as often as possible.
=end